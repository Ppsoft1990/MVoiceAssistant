.class public abstract Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "AbsThirdLoginActivity.java"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lo/fw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)Lcom/cmcc/migusso/sdk/common/ThirdEventListener;
    .locals 2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    iget-object v0, v0, Lo/fw;->c:Lcom/cmcc/migusso/sdk/common/ThirdEventListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "QQ"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "WECHAT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "WEIBO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ALIPAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(I)Lo/fw;
    .locals 2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    goto :goto_0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->b(I)Lo/fw;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-static {}, Lo/fs;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lo/fw;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final d(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->b(I)Lo/fw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lo/fw;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
