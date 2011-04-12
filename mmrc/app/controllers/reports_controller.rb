class ReportsController < ApplicationController

  def index
    @reports = Report.all
  end

  def vessel
    @report = Report.new
  end
  def save_vessel
    @report = Report.new(params[:report])
    if @report.save
      redirect_to view_vessel_report_path(@report)
    else
      render :action => 'vessel'
    end
  end

  def view_vessel
    @report = Report.find(params[:id])
  end

  def edit_vessel
    @report = Report.find(params[:id])
  end

  def update_vessel
    @report = Report.find(params[:id])
    if @report.update_attributes(params[:report])
      redirect_to view_vessel_report_path(@report)
    else
      render :action=>'edit_vessel'
    end
  end

  


  def voyage_information
    @report = Report.find(params[:id])
  end
  def save_voyage_information
    @report = Report.find(params[:id])
    if @report.update_attributes(params[:report])
      redirect_to isps_validity_report_path(@report)
    else
      render :action=>'voyage_information'
    end
  end




  def isps_validity
    @report = Report.find(params[:id])
  end
  def save_isps_validity
    @report = Report.find(params[:id])
    if @report.update_attributes(params[:report])
      redirect_to previous_ports_report_path(@report)
    else
      render :action=>'isps_validity'
    end
  end


  def previous_ports
    @report = Report.find(params[:id])
  end
  def save_previous_ports
#    raise params.inspect
    params[:report] ||= {}
    params[:report][:previous_port_ids] ||= {}
    @report = Report.find(params[:id])
    if @report.update_attributes(params[:report])
      redirect_to ship_interfaces_report_path(@report)
    else
      render :action=>'previous_ports'
    end
  end



  def ship_interfaces
    @report = Report.find(params[:id])
  end
  def save_ship_interfaces
    @report = Report.find(params[:id])
    if @report.update_attributes(params[:report])
      redirect_to passenger_list_report_path(@report)
    else
      render :action=>'ship_interfaces'
    end
  end



  def passenger_list
    @report = Report.find(params[:id])
    @passenger = Passenger.new
    @passenger.contact = Contact.new
    
    @report.passengers << @passenger
  end
  def save_passenger_list
    @passenger = Passenger.new(params[:report][:passenger])
    @report = Report.find(params[:id])
    if @passenger.save
      @report.passengers << @passenger
      redirect_to crew_list_report_path(@report)
    else
      render :action=>'passenger_list'
    end
  end



  def crew_list
    @report = Report.find(params[:id])
    @crew = Crew.new
    @crew.contact = Contact.new

    @report.crew << @crew
  end
  def save_crew_list
    @crew = Crew.new(params[:report][:crew])
    @report = Report.find(params[:id])
    if @report.save
      @report.crew << @crew
      redirect_to security_info_report_path(@report)
    else
      render :action=>'crew_list'
    end
  end


  def security_info
    @report = Report.find(params[:id])
  end
  def save_security_info
    @report = Report.find(params[:id])
    if @report.update_attributes(params[:report])
      redirect_to confirm_report_path(@report)
    else
      render :action=>'security_info'
    end
  end


  def confirm
    @report = Report.find(params[:id])
  end

  def save_confirm
    @report = Report.find(params[:id])
    if @report.save
      redirect_to reports_path(@report)
    else
      render :action=>'confirm'
    end
  end

end