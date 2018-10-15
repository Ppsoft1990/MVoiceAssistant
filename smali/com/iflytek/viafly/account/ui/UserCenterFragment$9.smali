.class public Lcom/iflytek/viafly/account/ui/UserCenterFragment$9;
.super Lcom/iflytek/framework/ui/share/AbsShareResultListener;
.source "UserCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltk;


# direct methods
.method public constructor <init>(Ltk;)V
    .locals 0
    .param p1, "this$0"    # Ltk;

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/iflytek/viafly/account/ui/UserCenterFragment$9;->this$0:Ltk;

    invoke-direct {p0}, Lcom/iflytek/framework/ui/share/AbsShareResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "shareId"    # Ljava/lang/String;

    .prologue
    .line 1197
    const-string/jumbo v1, "shareOther"

    .line 1198
    .local v1, "log":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1199
    const-string/jumbo v2, "weixinFriend"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1200
    const-string/jumbo v1, "shareSession"

    .line 1209
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1210
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_entry"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90105"

    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1212
    return-void

    .line 1201
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v2, "weixinTimeLine"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1202
    const-string/jumbo v1, "shareTimeline"

    goto :goto_0

    .line 1203
    :cond_2
    const-string/jumbo v2, "weibo"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1204
    const-string/jumbo v1, "shareSina"

    goto :goto_0

    .line 1205
    :cond_3
    const-string/jumbo v2, "qq"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1206
    const-string/jumbo v1, "shareQq"

    goto :goto_0
.end method

.method public onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "shareId"    # Ljava/lang/String;

    .prologue
    .line 1189
    if-nez p1, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/UserCenterFragment$9;->this$0:Ltk;

    invoke-static {v0}, Ltk;->d(Ltk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v0

    const-string/jumbo v1, "SHARE_LINK"

    invoke-virtual {v0, v1}, Lalq;->a(Ljava/lang/String;)V

    .line 1192
    :cond_0
    return-void
.end method
