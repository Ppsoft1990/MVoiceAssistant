.class Lft$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lft;


# direct methods
.method private constructor <init>(Lft;)V
    .locals 0

    iput-object p1, p0, Lft$a;->a:Lft;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lft;Lft$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lft$a;-><init>(Lft;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lft;->a:J

    iget-object v0, p0, Lft$a;->a:Lft;

    invoke-static {v0}, Lft;->a(Lft;)V

    invoke-static {}, Lfc;->b()Lfc;

    move-result-object v0

    invoke-virtual {v0}, Lfc;->h()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lel;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lel;->c()Lfw;

    move-result-object v0

    iget-object v1, p0, Lft$a;->a:Lft;

    invoke-virtual {v1}, Lft;->j()Lfu;

    move-result-object v1

    invoke-static {}, Lel;->d()Landroid/location/Location;

    move-result-object v2

    invoke-static {}, Lel;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lff;->a(Lfw;Lfu;Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_0
.end method
