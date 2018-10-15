.class public final Lauthcommon/bo;
.super Ljava/lang/Object;
.source "GPSTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public a:Landroid/location/Location;

.field private b:Landroid/location/LocationManager;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lauthcommon/bo;->c:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-direct {p0}, Lauthcommon/bo;->a()Landroid/location/Location;

    return-void
.end method

.method private a()Landroid/location/Location;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lauthcommon/bo;->c:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lauthcommon/bo;->b:Landroid/location/LocationManager;

    iget-object v0, p0, Lauthcommon/bo;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lauthcommon/bo;->b:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lauthcommon/bo;->b:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GPS location Enabled"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/bo;->b:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lauthcommon/bo;->b:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/bo;->a:Landroid/location/Location;

    :cond_0
    if-eqz v6, :cond_1

    iget-object v0, p0, Lauthcommon/bo;->a:Landroid/location/Location;

    if-nez v0, :cond_1

    const-string/jumbo v0, "Network location Enabled"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/bo;->b:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lauthcommon/bo;->b:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/bo;->a:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0}, Lauthcommon/bo;->b()V

    :goto_0
    iget-object v0, p0, Lauthcommon/bo;->a:Landroid/location/Location;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lauthcommon/bo;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lauthcommon/bo;->b()V

    throw v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lauthcommon/bo;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauthcommon/bo;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 4

    if-eqz p1, :cond_0

    iput-object p1, p0, Lauthcommon/bo;->a:Landroid/location/Location;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Latitude:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Longitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "Latitude"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "Latitude"

    const-string/jumbo v1, "enable"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "Latitude"

    const-string/jumbo v1, "status"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
