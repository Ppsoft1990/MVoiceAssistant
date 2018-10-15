.class public interface abstract Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
.super Ljava/lang/Object;
.source "IBusinessHandler.java"

# interfaces
.implements Lcom/iflytek/framework/business/speech/SpeechEventCallback;
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# virtual methods
.method public abstract clearBusinessData()V
.end method

.method public abstract getSpeechIntent()Landroid/content/Intent;
.end method

.method public abstract handleShortCutSpeechResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z
.end method

.method public abstract handleSpeechResult(Lcom/iflytek/framework/business/entities/HandleContext;Lcom/iflytek/yd/speech/ViaAsrResult;)V
.end method

.method public abstract onDataUpdated(Lcom/iflytek/framework/business/entities/UpdateDataType;)V
.end method

.method public varargs abstract onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
.end method

.method public varargs abstract onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z
.end method
