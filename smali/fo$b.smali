.class Lfo$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lfo;


# direct methods
.method private constructor <init>(Lfo;)V
    .locals 0

    iput-object p1, p0, Lfo$b;->a:Lfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfo;Lfp;)V
    .locals 0

    invoke-direct {p0, p1}, Lfo$b;-><init>(Lfo;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    iget-object v0, p0, Lfo$b;->a:Lfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfo;->a(Lfo;J)J

    iget-object v0, p0, Lfo$b;->a:Lfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfo;->a(Lfo;Z)V

    iget-object v0, p0, Lfo$b;->a:Lfo;

    invoke-static {v0, p1}, Lfo;->b(Lfo;Landroid/location/Location;)V

    iget-object v0, p0, Lfo$b;->a:Lfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfo;->b(Lfo;Z)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lfo$b;->a:Lfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfo;->b(Lfo;Landroid/location/Location;)V

    iget-object v0, p0, Lfo$b;->a:Lfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfo;->a(Lfo;Z)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lfo$b;->a:Lfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfo;->b(Lfo;Landroid/location/Location;)V

    iget-object v0, p0, Lfo$b;->a:Lfo;

    invoke-static {v0, v4}, Lfo;->a(Lfo;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lfo$b;->a:Lfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfo;->b(Lfo;J)J

    iget-object v0, p0, Lfo$b;->a:Lfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfo;->b(Lfo;Z)Z

    iget-object v0, p0, Lfo$b;->a:Lfo;

    invoke-static {v0, v4}, Lfo;->a(Lfo;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lfo$b;->a:Lfo;

    invoke-static {v0, v4}, Lfo;->b(Lfo;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
