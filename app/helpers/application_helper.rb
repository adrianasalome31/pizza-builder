module ApplicationHelper
    def show_alert_type(alert)
        alerts = { "success" => "check", "danger" => "error_outline" }
        alerts[alert]
    end
end
