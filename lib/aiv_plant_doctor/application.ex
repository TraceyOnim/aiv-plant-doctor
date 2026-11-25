defmodule AivPlantDoctor.Application do
  # See https://elixir.hexdocs.pm/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      AivPlantDoctorWeb.Telemetry,
      AivPlantDoctor.Repo,
      {DNSCluster, query: Application.get_env(:aiv_plant_doctor, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: AivPlantDoctor.PubSub},
      # Start a worker by calling: AivPlantDoctor.Worker.start_link(arg)
      # {AivPlantDoctor.Worker, arg},
      # Start to serve requests, typically the last entry
      AivPlantDoctorWeb.Endpoint
    ]

    # See https://elixir.hexdocs.pm/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AivPlantDoctor.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    AivPlantDoctorWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
