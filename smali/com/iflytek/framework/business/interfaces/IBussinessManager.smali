.class public interface abstract Lcom/iflytek/framework/business/interfaces/IBussinessManager;
.super Ljava/lang/Object;
.source "IBussinessManager.java"

# interfaces
.implements Lcom/iflytek/framework/business/interfaces/IBusinessObserver;


# virtual methods
.method public abstract getBusinessHandler(Ljava/lang/String;)Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
.end method

.method public abstract getPreHandler()Lcom/iflytek/framework/business/interfaces/IResultPreHandler;
.end method

.method public abstract getResultFilter(Ljava/lang/String;)Lcom/iflytek/yd/speech/RecognizeFilter;
.end method

.method public abstract handleSpeechResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V
.end method

.method public abstract judgeFocusExist(Ljava/lang/String;)Z
.end method

.method public abstract parseSpeechIntent()Landroid/content/Intent;
.end method

.method public abstract registBaseComponents(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/iflytek/mmp/core/webcore/BrowserCore;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/mmp/core/componentsManager/Components;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registBusinessComponents(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;Ljava/lang/String;)V
.end method

.method public abstract registBusinessPlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V
.end method
