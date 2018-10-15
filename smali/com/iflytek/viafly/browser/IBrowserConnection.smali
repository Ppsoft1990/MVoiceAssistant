.class public interface abstract Lcom/iflytek/viafly/browser/IBrowserConnection;
.super Ljava/lang/Object;
.source "IBrowserConnection.java"

# interfaces
.implements Lcom/iflytek/viafly/browser/BrowserViewCallback;
.implements Lcom/iflytek/viafly/browser/IBrowserPageCallback;


# virtual methods
.method public abstract canClearCach()Z
.end method

.method public abstract isCustomDownload()Z
.end method

.method public abstract onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract onInit(Lcom/iflytek/viafly/browser/IBrowserPageAbility;Lcom/iflytek/viafly/browser/BrowserView;Landroid/content/Intent;)V
.end method
