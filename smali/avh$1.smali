.class Lavh$1;
.super Ljava/lang/Object;
.source "ScheduleTriggerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavh;->d(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lavh;


# direct methods
.method constructor <init>(Lavh;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lavh;

    .prologue
    .line 161
    iput-object p1, p0, Lavh$1;->b:Lavh;

    iput-object p2, p0, Lavh$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lavh$1;->b:Lavh;

    iget-object v0, v0, Lavh;->a:Landroid/content/Context;

    invoke-static {v0}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    iget-object v2, p0, Lavh$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)V

    .line 166
    return-void
.end method
