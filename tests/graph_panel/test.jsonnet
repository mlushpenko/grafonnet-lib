local grafana = import "grafonnet/grafana.libsonnet";
local graphPanel = grafana.graphPanel;

{
    basic: graphPanel.new("test"),
    advanced: graphPanel.new(
        "test",
        id=2,
        decimals=2,
        span=8,
        min_span=9,
        format="ms",
        min=10,
        max=10,
        lines=false,
        fill=2,
        linewidth=2,
        points=true,
        bars=true,
        dashes=true,
        stack=true,
        repeat="$device",
        legend_show=false,
        legend_values=true,
        legend_min=true,
        legend_max=true,
        legend_current=true,
        legend_total=true,
        legend_avg=true,
        legend_alignAsTable=true,
        legend_rightSide=true,
    ),
    targets: graphPanel.new("with targets")
             + graphPanel.addTarget("foo")
             + graphPanel.addTarget("foo"),
}
