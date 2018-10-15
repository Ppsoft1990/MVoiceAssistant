.class final Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$2;
.super Ljava/lang/Object;
.source "ScheduleBusinessRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->handleBussiness(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$recognizerResult:Lcom/iflytek/yd/speech/ViaAsrResult;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$2;->val$mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$2;->val$recognizerResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 263
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$2;->val$mContext:Landroid/content/Context;

    const-class v3, Lcom/iflytek/viafly/Home;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    const-string/jumbo v2, "from_where"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    new-instance v0, Lcom/iflytek/framework/business/entities/StartHomeInfo;

    invoke-direct {v0}, Lcom/iflytek/framework/business/entities/StartHomeInfo;-><init>()V

    .line 267
    .local v0, "info":Lcom/iflytek/framework/business/entities/StartHomeInfo;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$2;->val$recognizerResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    iput-object v2, v0, Lcom/iflytek/framework/business/entities/StartHomeInfo;->mAfferentInfo:Ljava/lang/Object;

    .line 268
    iput v4, v0, Lcom/iflytek/framework/business/entities/StartHomeInfo;->mFromWhere:I

    .line 269
    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setStartHomeInfo(Lcom/iflytek/framework/business/entities/StartHomeInfo;)V

    .line 271
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$2;->val$mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 272
    const-string/jumbo v2, "ScheduleBizHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleBussiness() | start Home.class | recognizeResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$2;->val$recognizerResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method
