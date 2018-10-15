.class Latk;
.super Latm;
.source "BlcPushRequestController.java"

# interfaces
.implements Lyx;


# static fields
.field private static d:Latk;


# instance fields
.field private final c:Ljava/lang/String;

.field private e:Lyv;

.field private f:Lato;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Latm;-><init>(Landroid/content/Context;)V

    .line 42
    const-string/jumbo v0, "BlcPushRequestController"

    iput-object v0, p0, Latk;->c:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "BlcPushRequestController"

    const-string/jumbo v1, "BlcPushRequestController()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lyw;->a()Lyw;

    move-result-object v0

    iput-object v0, p0, Latk;->e:Lyv;

    .line 65
    iget-object v0, p0, Latk;->e:Lyv;

    invoke-interface {v0, p1}, Lyv;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;)Latk;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v0, Latk;->d:Latk;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Latk;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Latk;->d:Latk;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Latk;

    invoke-direct {v0, p0}, Latk;-><init>(Landroid/content/Context;)V

    sput-object v0, Latk;->d:Latk;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Latk;->d:Latk;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lzh;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 101
    const-string/jumbo v5, "BlcPushRequestController"

    const-string/jumbo v6, "onPushBegin()"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v4, 0x0

    .line 105
    .local v4, "uid":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/iflytek/blc/config/ConfigProxy;->getUid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 109
    :goto_0
    const-string/jumbo v5, "BlcPushRequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPushBegin | uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {v4}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    iget-object v5, p0, Latk;->a:Landroid/content/Context;

    invoke-static {v5}, Lazy;->a(Landroid/content/Context;)Lazy;

    move-result-object v5

    invoke-virtual {v5}, Lazy;->a()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "cacheUid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 117
    const-string/jumbo v5, "BlcPushRequestController"

    const-string/jumbo v6, "onPushBegin | uid is null, use cache uid"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/iflytek/blc/core/BlcServiceImpl;->getInstance()Lcom/iflytek/blc/core/BlcService;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/iflytek/blc/core/BlcService;->setUid(Ljava/lang/String;)V

    .line 133
    .end local v1    # "cacheUid":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v5, p0, Latk;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v5

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "tokenId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    const-string/jumbo v5, "BlcPushRequestController"

    const-string/jumbo v6, "onPushBegin | tokenId is empty"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v5, p0, Latk;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v5

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v7, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_PUSH:Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-virtual {v5, v6, v7, v8}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    .line 141
    :cond_1
    iget-object v5, p0, Latk;->a:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 142
    iget-object v5, p0, Latk;->a:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.iflytek.cmcc.ACTION_REQUEST_PUSH_START"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    :cond_2
    const/4 v0, 0x0

    .line 147
    .local v0, "blcPushParam":Lzh;
    iget-object v5, p0, Latk;->f:Lato;

    if-eqz v5, :cond_4

    .line 148
    iget-object v5, p0, Latk;->f:Lato;

    .line 149
    invoke-static {v5}, Lauc;->a(Lato;)Lzh;

    move-result-object v0

    .line 150
    iput-object v8, p0, Latk;->f:Lato;

    .line 155
    :goto_2
    return-object v0

    .line 106
    .end local v0    # "blcPushParam":Lzh;
    .end local v3    # "tokenId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BlcPushRequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 121
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cacheUid":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "BlcPushRequestController"

    const-string/jumbo v6, "onPushBegin | uid is null, start anon login"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v5, p0, Latk;->a:Landroid/content/Context;

    invoke-static {v5}, Lvo;->b(Landroid/content/Context;)Lvo;

    move-result-object v5

    invoke-virtual {v5}, Lvo;->b()V

    goto :goto_1

    .line 153
    .end local v1    # "cacheUid":Ljava/lang/String;
    .restart local v0    # "blcPushParam":Lzh;
    .restart local v3    # "tokenId":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Latk;->d()Lato;

    move-result-object v5

    invoke-static {v5}, Lauc;->a(Lato;)Lzh;

    move-result-object v0

    goto :goto_2
.end method

.method public a(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string/jumbo v0, "BlcPushRequestController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPushFailed() errorcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "errorinfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0, p1}, Latk;->a(I)V

    .line 163
    return-void
.end method

.method public a(Latp;)V
    .locals 4
    .param p1, "range"    # Latp;

    .prologue
    .line 192
    const-string/jumbo v1, "BlcPushRequestController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addMustPushTimeRange() range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {p1}, Lauc;->a(Latp;)Lzj;

    move-result-object v0

    .line 194
    .local v0, "blcRange":Lzj;
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Latk;->e:Lyv;

    invoke-interface {v1, v0}, Lyv;->a(Lzj;)V

    .line 197
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "noticeItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    const-string/jumbo v0, "BlcPushRequestController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPushSuccess(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0, p1}, Latk;->c(Ljava/util/List;)V

    .line 170
    return-void
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "noticeItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    const-string/jumbo v1, "BlcPushRequestController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFilterResult(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iget-object v1, p0, Latk;->a:Landroid/content/Context;

    invoke-static {v1}, Lxh;->a(Landroid/content/Context;)Lxh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lxh;->a(Ljava/util/List;)V

    .line 183
    invoke-virtual {p0, p1}, Latk;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "BlcPushRequestController"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0}, Latm;->b()V

    .line 73
    iget-object v0, p0, Latk;->e:Lyv;

    const/16 v1, 0x78

    invoke-interface {v0, v1}, Lyv;->a(I)V

    .line 75
    iget-object v0, p0, Latk;->e:Lyv;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lyv;->a(Z)V

    .line 77
    iget-object v0, p0, Latk;->e:Lyv;

    invoke-interface {v0, p0}, Lyv;->a(Lyx;)V

    .line 78
    invoke-virtual {p0}, Latk;->c()V

    .line 79
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "BlcPushRequestController"

    const-string/jumbo v1, "resumePush()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Latk;->e:Lyv;

    iget-object v1, p0, Latk;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lyv;->b(Landroid/content/Context;)V

    .line 90
    return-void
.end method
