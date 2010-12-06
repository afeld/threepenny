class LoanSectorsController < ApplicationController
  # GET /loan_sectors
  # GET /loan_sectors.xml
  def index
    @loan_sectors = LoanSector.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @loan_sectors }
    end
  end

  # GET /loan_sectors/1
  # GET /loan_sectors/1.xml
  def show
    @loan_sector = LoanSector.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @loan_sector }
    end
  end

  # GET /loan_sectors/new
  # GET /loan_sectors/new.xml
  def new
    @loan_sector = LoanSector.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @loan_sector }
    end
  end

  # GET /loan_sectors/1/edit
  def edit
    @loan_sector = LoanSector.find(params[:id])
  end

  # POST /loan_sectors
  # POST /loan_sectors.xml
  def create
    @loan_sector = LoanSector.new(params[:loan_sector])

    respond_to do |format|
      if @loan_sector.save
        format.html { redirect_to(@loan_sector, :notice => 'Loan sector was successfully created.') }
        format.xml  { render :xml => @loan_sector, :status => :created, :location => @loan_sector }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @loan_sector.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /loan_sectors/1
  # PUT /loan_sectors/1.xml
  def update
    @loan_sector = LoanSector.find(params[:id])

    respond_to do |format|
      if @loan_sector.update_attributes(params[:loan_sector])
        format.html { redirect_to(@loan_sector, :notice => 'Loan sector was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @loan_sector.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_sectors/1
  # DELETE /loan_sectors/1.xml
  def destroy
    @loan_sector = LoanSector.find(params[:id])
    @loan_sector.destroy

    respond_to do |format|
      format.html { redirect_to(loan_sectors_url) }
      format.xml  { head :ok }
    end
  end
end
