.class public Lcn/richinfo/dm/receiver/DMBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "DMBroadCastReceiver"

    sput-object v0, Lcn/richinfo/dm/receiver/DMBroadCastReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "test"

    const-string/jumbo v1, "saveReportSuccessTime"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/richinfo/dm/util/SPUtils;->saveReportSuccessTime(Landroid/content/Context;J)V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/richinfo/dm/receiver/DMBroadCastReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/richinfo/dm/receiver/DMBroadCastReceiver$1;-><init>(Lcn/richinfo/dm/receiver/DMBroadCastReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcn/richinfo/dm/receiver/DMBroadCastReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/richinfo/dm/receiver/DMBroadCastReceiver;->b(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.dmyk.android.action.REPORT_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcn/richinfo/dm/receiver/DMBroadCastReceiver;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iput-object p1, p0, Lcn/richinfo/dm/receiver/DMBroadCastReceiver;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcn/richinfo/dm/receiver/DMBroadCastReceiver;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p1}, Lcn/richinfo/dm/receiver/DMBroadCastReceiver;->a(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
