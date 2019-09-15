# frozen_string_literal: true

module Healthcheck
  class Router
    def self.mount(router)
      router.send(Healthcheck.method, Healthcheck.route => 'healthcheck#check')
    end
  end
end