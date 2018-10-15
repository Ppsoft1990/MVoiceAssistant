.class public interface abstract Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper$SmartHomeScanListener;
.super Ljava/lang/Object;
.source "SmartHomeScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmartHomeScanListener"
.end annotation


# virtual methods
.method public abstract onCompleted(Z)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onFound(Lcom/iflytek/viafly/smarthome/base/DeviceItem;)V
.end method
