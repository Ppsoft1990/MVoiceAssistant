.class Lcom/iflytek/viafly/browser/BrowserViewComponents$1;
.super Ljava/lang/Object;
.source "BrowserViewComponents.java"

# interfaces
.implements Lnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/browser/BrowserViewComponents;->onAuthEvent(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/browser/BrowserViewComponents;

.field final synthetic val$browserView:Lcom/iflytek/viafly/browser/BrowserView;

.field final synthetic val$isRedirect:Z

.field final synthetic val$targetUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/browser/BrowserViewComponents;ZLcom/iflytek/viafly/browser/BrowserView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/browser/BrowserViewComponents;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;->this$0:Lcom/iflytek/viafly/browser/BrowserViewComponents;

    iput-boolean p2, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;->val$isRedirect:Z

    iput-object p3, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;->val$browserView:Lcom/iflytek/viafly/browser/BrowserView;

    iput-object p4, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;->val$targetUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 152
    const-string/jumbo v0, "BrowserViewComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthError errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 6
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 129
    iget-boolean v3, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;->val$isRedirect:Z

    if-nez v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    :try_start_0
    const-string/jumbo v3, "BrowserViewComponents"

    const-string/jumbo v4, "onAuthResult"

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;->val$browserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/browser/BrowserView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;->val$targetUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    new-instance v2, Ljava/lang/String;

    .end local v2    # "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;->val$targetUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v2    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "BrowserViewComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    .line 140
    invoke-virtual {p3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;->this$0:Lcom/iflytek/viafly/browser/BrowserViewComponents;

    invoke-virtual {p3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->access$000(Lcom/iflytek/viafly/browser/BrowserViewComponents;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "complexUrl":Ljava/lang/String;
    const-string/jumbo v3, "BrowserViewComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "complexUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;->val$browserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/browser/BrowserView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v0    # "complexUrl":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BrowserViewComponents"

    const-string/jumbo v4, "onAuthResult"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
