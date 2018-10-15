.class public final Lqo;
.super Ljava/lang/Object;
.source "OperationTitleFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string/jumbo v0, "smarthome"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lcom/iflytek/viafly/smarthome/ui/SmartOperationTitle;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smarthome/ui/SmartOperationTitle;-><init>(Landroid/content/Context;)V

    .line 16
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
