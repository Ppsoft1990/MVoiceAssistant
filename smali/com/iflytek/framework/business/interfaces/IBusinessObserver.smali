.class public interface abstract Lcom/iflytek/framework/business/interfaces/IBusinessObserver;
.super Ljava/lang/Object;
.source "IBusinessObserver.java"


# virtual methods
.method public abstract onDataUpdated(Ljava/lang/String;Lcom/iflytek/framework/business/entities/UpdateDataType;)V
.end method

.method public varargs abstract onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
.end method

.method public varargs abstract onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z
.end method
