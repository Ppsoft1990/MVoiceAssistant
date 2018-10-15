.class public Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;
.super Ljava/lang/Object;
.source "SmartScheduleConfigManager.java"


# instance fields
.field private final CONFIG_FILENAME:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private scheduleConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "smartschedule/smartschedule.cfg"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;->CONFIG_FILENAME:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;->context:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;->initConfig()V

    .line 29
    return-void
.end method

.method private initConfig()V
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;->context:Landroid/content/Context;

    const-string/jumbo v2, "smartschedule/smartschedule.cfg"

    invoke-static {v1, v2}, Lazc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/config/ScheduleConfigParser;->parserScheduleConfig(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;->scheduleConfigs:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getScheduleConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;->scheduleConfigs:Ljava/util/List;

    return-object v0
.end method
