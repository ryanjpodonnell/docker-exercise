Myproject::Application.routes.draw do
  get 'heartbeat' => "custom_controller#heartbeat"
end
