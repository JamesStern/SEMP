require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AppformsController do

  # This should return the minimal set of attributes required to create a valid
  # Appform. As you add validations to Appform, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "first_name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AppformsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all appforms as @appforms" do
      appform = Appform.create! valid_attributes
      get :index, {}, valid_session
      assigns(:appforms).should eq([appform])
    end
  end

  describe "GET show" do
    it "assigns the requested appform as @appform" do
      appform = Appform.create! valid_attributes
      get :show, {:id => appform.to_param}, valid_session
      assigns(:appform).should eq(appform)
    end
  end

  describe "GET new" do
    it "assigns a new appform as @appform" do
      get :new, {}, valid_session
      assigns(:appform).should be_a_new(Appform)
    end
  end

  describe "GET edit" do
    it "assigns the requested appform as @appform" do
      appform = Appform.create! valid_attributes
      get :edit, {:id => appform.to_param}, valid_session
      assigns(:appform).should eq(appform)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Appform" do
        expect {
          post :create, {:appform => valid_attributes}, valid_session
        }.to change(Appform, :count).by(1)
      end

      it "assigns a newly created appform as @appform" do
        post :create, {:appform => valid_attributes}, valid_session
        assigns(:appform).should be_a(Appform)
        assigns(:appform).should be_persisted
      end

      it "redirects to the created appform" do
        post :create, {:appform => valid_attributes}, valid_session
        response.should redirect_to(Appform.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved appform as @appform" do
        # Trigger the behavior that occurs when invalid params are submitted
        Appform.any_instance.stub(:save).and_return(false)
        post :create, {:appform => { "first_name" => "invalid value" }}, valid_session
        assigns(:appform).should be_a_new(Appform)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Appform.any_instance.stub(:save).and_return(false)
        post :create, {:appform => { "first_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested appform" do
        appform = Appform.create! valid_attributes
        # Assuming there are no other appforms in the database, this
        # specifies that the Appform created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Appform.any_instance.should_receive(:update_attributes).with({ "first_name" => "MyString" })
        put :update, {:id => appform.to_param, :appform => { "first_name" => "MyString" }}, valid_session
      end

      it "assigns the requested appform as @appform" do
        appform = Appform.create! valid_attributes
        put :update, {:id => appform.to_param, :appform => valid_attributes}, valid_session
        assigns(:appform).should eq(appform)
      end

      it "redirects to the appform" do
        appform = Appform.create! valid_attributes
        put :update, {:id => appform.to_param, :appform => valid_attributes}, valid_session
        response.should redirect_to(appform)
      end
    end

    describe "with invalid params" do
      it "assigns the appform as @appform" do
        appform = Appform.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Appform.any_instance.stub(:save).and_return(false)
        put :update, {:id => appform.to_param, :appform => { "first_name" => "invalid value" }}, valid_session
        assigns(:appform).should eq(appform)
      end

      it "re-renders the 'edit' template" do
        appform = Appform.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Appform.any_instance.stub(:save).and_return(false)
        put :update, {:id => appform.to_param, :appform => { "first_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested appform" do
      appform = Appform.create! valid_attributes
      expect {
        delete :destroy, {:id => appform.to_param}, valid_session
      }.to change(Appform, :count).by(-1)
    end

    it "redirects to the appforms list" do
      appform = Appform.create! valid_attributes
      delete :destroy, {:id => appform.to_param}, valid_session
      response.should redirect_to(appforms_url)
    end
  end

end