.class public interface abstract Lacp;
.super Ljava/lang/Object;
.source "BusinessBehaviourInterface.java"


# virtual methods
.method public abstract addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V
.end method

.method public abstract addWidgetQuestionView(Ljava/lang/String;)V
.end method

.method public abstract cacheScenceData(Lacf;)V
.end method

.method public abstract createWidgetAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
.end method

.method public abstract getDialContext()Landroid/content/Context;
.end method

.method public abstract getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;
.end method

.method public abstract getScenceDataCache()Lacf;
.end method

.method public abstract isTTSSpeaking()Z
.end method

.method public abstract reStartReco(Landroid/content/Intent;)V
.end method

.method public abstract reStartReco(Ljava/lang/String;)V
.end method

.method public abstract speakTts(Ljava/lang/String;Ljava/util/HashMap;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract speakTtsWithCallBack(Ljava/lang/String;Ljava/util/HashMap;JLacs;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lacs;",
            ")V"
        }
    .end annotation
.end method

.method public abstract stopTTSAsync()V
.end method
