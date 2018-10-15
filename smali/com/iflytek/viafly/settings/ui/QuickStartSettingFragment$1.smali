.class Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;
.super Ljava/lang/Object;
.source "QuickStartSettingFragment.java"

# interfaces
.implements Lui$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCanceled(Ljava/lang/String;)V
    .locals 1
    .param p1, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public onDownloadFail(Ljava/lang/String;I)V
    .locals 1
    .param p1, "appUrl"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public onDownloadProgress(Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "appUrl"    # Ljava/lang/String;
    .param p2, "receivedBytes"    # J
    .param p4, "totalBytes"    # J

    .prologue
    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/QuickStartSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public onInstallSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.iflytek.lockscreen"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const-string/jumbo v0, "com.iflytek.lockscreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
