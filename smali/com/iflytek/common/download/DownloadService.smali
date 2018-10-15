.class public Lcom/iflytek/common/download/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"

# interfaces
.implements Lcom/iflytek/yd/http/interfaces/HttpContext;
.implements Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/common/download/DownloadService$a;,
        Lcom/iflytek/common/download/DownloadService$d;,
        Lcom/iflytek/common/download/DownloadService$c;,
        Lcom/iflytek/common/download/DownloadService$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static e:Lnu;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/common/download/DownloadService$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lnq;

.field private f:Z

.field private g:Lcom/iflytek/common/download/DownloadService$d;

.field private h:Lhk;

.field private i:Lnp;

.field private j:Lcom/iflytek/common/download/DownloadService$a;

.field private k:Landroid/os/HandlerThread;

.field private l:Lnm;

.field private m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/iflytek/common/download/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/download/DownloadService;->m:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/download/DownloadService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/common/download/DownloadService;Lnm;)Lnm;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # Lnm;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    return-object p1
.end method

.method static synthetic a()Lnu;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    return-object v0
.end method

.method private a(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    .line 846
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    if-nez v3, :cond_0

    .line 874
    :goto_0
    return-void

    .line 851
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 854
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v0, p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->setVisibility(I)V

    .line 856
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v4, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v4, v0}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    goto :goto_1

    .line 860
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/download/DownloadService$b;

    .line 861
    .local v2, "item":Lcom/iflytek/common/download/DownloadService$b;
    iget-object v0, v2, Lcom/iflytek/common/download/DownloadService$b;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 862
    .restart local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v0, p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->setVisibility(I)V

    .line 864
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v4, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v4, v0}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    goto :goto_2

    .line 868
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v2    # "item":Lcom/iflytek/common/download/DownloadService$b;
    :cond_2
    if-eqz p1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    .line 870
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v3, v1}, Lnm;->a(Ljava/util/Collection;)V

    goto :goto_0

    .line 872
    :cond_3
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v3}, Lnm;->a()V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;J)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "errorDetail"    # Ljava/lang/String;
    .param p3, "id"    # J

    .prologue
    .line 1183
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/DownloadService$b;

    .line 1184
    .local v1, "item":Lcom/iflytek/common/download/DownloadService$b;
    if-eqz v1, :cond_2

    .line 1185
    iget-object v0, v1, Lcom/iflytek/common/download/DownloadService$b;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 1187
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1188
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getRetryCnt()I

    move-result v2

    .line 1189
    .local v2, "retry":I
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setRetryCnt(I)V

    .line 1191
    .end local v2    # "retry":I
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 1192
    invoke-virtual {v0, p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->setErrorCode(I)V

    .line 1194
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isRange()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1195
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v3, v0}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    .line 1201
    :goto_0
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1202
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v3, v0}, Lnm;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 1204
    :cond_1
    sget-object v3, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v3, v0}, Lnu;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 1206
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->j()V

    .line 1211
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_2
    return-void

    .line 1197
    .restart local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_3
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v3, p3, p4}, Lnq;->b(J)I

    .line 1198
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/iflytek/common/download/DownloadService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 877
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/DownloadService$b;

    .line 878
    .local v1, "item":Lcom/iflytek/common/download/DownloadService$b;
    if-nez v1, :cond_0

    .line 909
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v2, v1, Lcom/iflytek/common/download/DownloadService$b;->b:Lcom/iflytek/yd/http/interfaces/HttpDownload;

    invoke-interface {v2}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->cancel()V

    .line 886
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    iget-object v0, v1, Lcom/iflytek/common/download/DownloadService$b;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 890
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 892
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isRange()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 893
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v2, v0}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    .line 901
    :goto_1
    sget-object v2, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v2, v0}, Lnu;->f(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 903
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 904
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v2, v0}, Lnm;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 908
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->j()V

    goto :goto_0

    .line 896
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v2, p1, p2}, Lnq;->b(J)I

    .line 897
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/common/download/DownloadService;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(JI)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "visibility"    # I

    .prologue
    .line 792
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    if-nez v3, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/download/DownloadService$b;

    .line 798
    .local v2, "item":Lcom/iflytek/common/download/DownloadService$b;
    if-eqz v2, :cond_3

    .line 799
    iget-object v0, v2, Lcom/iflytek/common/download/DownloadService$b;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 805
    .local v0, "currentInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getVisibility()I

    move-result v3

    if-eq v3, p3, :cond_2

    .line 807
    invoke-virtual {v0, p3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setVisibility(I)V

    .line 810
    :cond_2
    if-eqz p3, :cond_4

    const/4 v3, 0x2

    if-eq p3, v3, :cond_4

    .line 812
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getVisibility()I

    move-result v3

    if-eq v3, p3, :cond_0

    .line 813
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v3, v0}, Lnm;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 814
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v3, v0}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    goto :goto_0

    .line 801
    .end local v0    # "currentInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_3
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .restart local v0    # "currentInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    goto :goto_1

    .line 817
    :cond_4
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v3, p1, p2}, Lnm;->a(J)V

    .line 819
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v3, p1, p2}, Lnq;->a(J)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v1

    .line 820
    .local v1, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v1, :cond_0

    .line 821
    invoke-virtual {v1, p3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setVisibility(I)V

    .line 822
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v3, v1}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    goto :goto_0
.end method

.method private a(JIJ)V
    .locals 4
    .param p1, "currentBytes"    # J
    .param p3, "percent"    # I
    .param p4, "id"    # J

    .prologue
    .line 1221
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/DownloadService$b;

    .line 1222
    .local v1, "item":Lcom/iflytek/common/download/DownloadService$b;
    if-eqz v1, :cond_1

    .line 1223
    iget-object v0, v1, Lcom/iflytek/common/download/DownloadService$b;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 1224
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 1225
    invoke-virtual {v0, p1, p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setCurrentBytes(J)V

    .line 1228
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1229
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v2, v0}, Lnm;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 1231
    :cond_0
    sget-object v2, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v2, v0}, Lnu;->d(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 1233
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "length"    # J
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "newPath"    # Ljava/lang/String;
    .param p5, "eTag"    # Ljava/lang/String;
    .param p6, "id"    # J

    .prologue
    .line 1281
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/DownloadService$b;

    .line 1282
    .local v1, "item":Lcom/iflytek/common/download/DownloadService$b;
    if-eqz v1, :cond_1

    .line 1283
    iget-object v0, v1, Lcom/iflytek/common/download/DownloadService$b;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 1284
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 1285
    invoke-virtual {v0, p1, p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setTotleBytes(J)V

    .line 1286
    invoke-virtual {v0, p3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setMimeType(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v0, p4}, Lcom/iflytek/common/download/entities/DownloadInfo;->setFilePath(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v0, p5}, Lcom/iflytek/common/download/entities/DownloadInfo;->setETag(Ljava/lang/String;)V

    .line 1290
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v2, v0}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    .line 1292
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1293
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v2, v0}, Lnm;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 1297
    :cond_0
    sget-object v2, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v2, v0}, Lnu;->h(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 1299
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    return-void
.end method

.method private a(JZ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "isView"    # Z

    .prologue
    .line 833
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    if-nez v1, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v1, p1, p2}, Lnq;->a(J)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 838
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0, p3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setViewFlag(Z)V

    .line 842
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v1, v0}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 26
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 525
    if-nez p1, :cond_0

    .line 648
    :goto_0
    return-void

    .line 529
    :cond_0
    const-string/jumbo v22, "com.iflytek.yd.download.action"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 530
    .local v4, "action":I
    const-string/jumbo v22, "id"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 532
    .local v12, "id":J
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 533
    sget-object v22, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "parseDownloadInfoFromIntent| action = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_1
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 538
    :sswitch_0
    new-instance v11, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-direct {v11}, Lcom/iflytek/common/download/entities/DownloadInfo;-><init>()V

    .line 539
    .local v11, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const-string/jumbo v22, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 540
    .local v20, "url":Ljava/lang/String;
    const-string/jumbo v22, "file_path"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 541
    .local v9, "filePath":Ljava/lang/String;
    const-string/jumbo v22, "visibility"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 542
    .local v21, "visibility":I
    const-string/jumbo v22, "type"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 543
    .local v19, "type":I
    const-string/jumbo v22, "entry_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 545
    .local v7, "entryType":Ljava/lang/String;
    const-string/jumbo v22, "range"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 546
    .local v15, "range":Z
    const-string/jumbo v22, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 548
    .local v18, "title":Ljava/lang/String;
    const-string/jumbo v22, "cover"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 550
    .local v5, "cover":Z
    const-string/jumbo v22, "delete_db"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 552
    .local v6, "deleteRecord":Z
    const-string/jumbo v22, "foreground"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 554
    .local v10, "foreground":Z
    const-string/jumbo v22, "retry_cnt"

    const/16 v23, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 556
    .local v17, "retryCount":I
    const-string/jumbo v22, "additional_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 558
    .local v16, "redirectUrl":Ljava/lang/String;
    const-string/jumbo v22, "additional_extra"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 559
    .local v8, "extra":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 560
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->setVisibility(I)V

    .line 561
    invoke-virtual {v11, v9}, Lcom/iflytek/common/download/entities/DownloadInfo;->setSpecifiedPath(Ljava/lang/String;)V

    .line 562
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->setType(I)V

    .line 563
    invoke-virtual {v11, v7}, Lcom/iflytek/common/download/entities/DownloadInfo;->setEntryType(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v11, v15}, Lcom/iflytek/common/download/entities/DownloadInfo;->setRange(Z)V

    .line 565
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->setTitle(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v11, v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->setCover(Z)V

    .line 567
    invoke-virtual {v11, v6}, Lcom/iflytek/common/download/entities/DownloadInfo;->setDeleteDB(Z)V

    .line 568
    invoke-virtual {v11, v10}, Lcom/iflytek/common/download/entities/DownloadInfo;->setForeground(Z)V

    .line 569
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->setRetryCnt(I)V

    .line 570
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->setRedirectUrl(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v11, v8}, Lcom/iflytek/common/download/entities/DownloadInfo;->setExtra(Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0xb

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 578
    .end local v5    # "cover":Z
    .end local v6    # "deleteRecord":Z
    .end local v7    # "entryType":Ljava/lang/String;
    .end local v8    # "extra":Ljava/lang/String;
    .end local v9    # "filePath":Ljava/lang/String;
    .end local v10    # "foreground":Z
    .end local v11    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v15    # "range":Z
    .end local v16    # "redirectUrl":Ljava/lang/String;
    .end local v17    # "retryCount":I
    .end local v18    # "title":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "url":Ljava/lang/String;
    .end local v21    # "visibility":I
    :sswitch_1
    const-string/jumbo v22, "visibility"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 579
    .restart local v21    # "visibility":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0xc

    .line 580
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 579
    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 585
    .end local v21    # "visibility":I
    :sswitch_2
    new-instance v11, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-direct {v11}, Lcom/iflytek/common/download/entities/DownloadInfo;-><init>()V

    .line 586
    .restart local v11    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const-string/jumbo v22, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 587
    .restart local v20    # "url":Ljava/lang/String;
    const-string/jumbo v22, "visibility"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 588
    .restart local v21    # "visibility":I
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->setVisibility(I)V

    .line 589
    invoke-virtual {v11, v12, v13}, Lcom/iflytek/common/download/entities/DownloadInfo;->setId(J)V

    .line 590
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0xd

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 596
    .end local v11    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v20    # "url":Ljava/lang/String;
    .end local v21    # "visibility":I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0x11

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 601
    :sswitch_4
    new-instance v11, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-direct {v11}, Lcom/iflytek/common/download/entities/DownloadInfo;-><init>()V

    .line 602
    .restart local v11    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const-string/jumbo v22, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 603
    .restart local v20    # "url":Ljava/lang/String;
    invoke-virtual {v11, v12, v13}, Lcom/iflytek/common/download/entities/DownloadInfo;->setId(J)V

    .line 604
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0xe

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 610
    .end local v11    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v20    # "url":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0xf

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 615
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0x12

    invoke-virtual/range {v23 .. v24}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 620
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 625
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0x13

    invoke-virtual/range {v23 .. v24}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 629
    :sswitch_9
    new-instance v11, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-direct {v11}, Lcom/iflytek/common/download/entities/DownloadInfo;-><init>()V

    .line 630
    .restart local v11    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const-string/jumbo v22, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 631
    .restart local v20    # "url":Ljava/lang/String;
    const-string/jumbo v22, "view"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 632
    .local v14, "isView":Z
    invoke-virtual {v11, v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->setViewFlag(Z)V

    .line 633
    invoke-virtual {v11, v12, v13}, Lcom/iflytek/common/download/entities/DownloadInfo;->setId(J)V

    .line 634
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0x15

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 638
    .end local v11    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v14    # "isView":Z
    .end local v20    # "url":Ljava/lang/String;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0x16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 641
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0x17

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 644
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    move-object/from16 v23, v0

    const/16 v24, 0x18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 535
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_5
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_2
        0x8 -> :sswitch_6
        0x9 -> :sswitch_1
        0xc -> :sswitch_9
        0x3e9 -> :sswitch_a
        0x3ea -> :sswitch_b
        0x3eb -> :sswitch_c
    .end sparse-switch
.end method

.method static synthetic a(Lcom/iflytek/common/download/DownloadService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/iflytek/common/download/DownloadService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/download/DownloadService;ILjava/lang/String;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/common/download/DownloadService;->a(ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/download/DownloadService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/download/DownloadService;->e(J)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/download/DownloadService;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/download/DownloadService;->a(JI)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/download/DownloadService;JIJ)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # J

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/iflytek/common/download/DownloadService;->a(JIJ)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/download/DownloadService;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # J

    .prologue
    .line 47
    invoke-direct/range {p0 .. p7}, Lcom/iflytek/common/download/DownloadService;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/download/DownloadService;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/download/DownloadService;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/download/DownloadService;Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/download/DownloadService;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/common/download/DownloadService;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    const/4 v6, 0x5

    .line 656
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    :cond_0
    new-instance p1, Lcom/iflytek/common/download/entities/DownloadInfo;

    .end local p1    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-direct {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;-><init>()V

    .line 659
    .restart local p1    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {p1, v6}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 660
    const v3, 0xc3ba5

    invoke-virtual {p1, v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setErrorCode(I)V

    .line 661
    sget-object v3, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v3, p1}, Lnu;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 688
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->i:Lnp;

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnp;->c(Ljava/lang/String;)I

    move-result v2

    .line 666
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 667
    invoke-virtual {p1, v6}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 668
    invoke-virtual {p1, v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setErrorCode(I)V

    .line 670
    sget-object v3, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v3, p1}, Lnu;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0

    .line 675
    :cond_2
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v3, p1}, Lnq;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)J

    move-result-wide v0

    .line 676
    .local v0, "id":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_3

    .line 678
    invoke-virtual {p1, v6}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 679
    const/16 v3, 0x389

    invoke-virtual {p1, v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setErrorCode(I)V

    .line 680
    sget-object v3, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v3, p1}, Lnu;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0

    .line 684
    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->setId(J)V

    .line 687
    invoke-direct {p0, p1}, Lcom/iflytek/common/download/DownloadService;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1343
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1346
    .end local v0    # "tempFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 1241
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/DownloadService$b;

    .line 1242
    .local v1, "item":Lcom/iflytek/common/download/DownloadService$b;
    if-eqz v1, :cond_2

    .line 1243
    iget-object v0, v1, Lcom/iflytek/common/download/DownloadService$b;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 1244
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v0, p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->setFilePath(Ljava/lang/String;)V

    .line 1245
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 1247
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v2, v0}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    .line 1249
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v2, v0}, Lnm;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 1252
    :cond_0
    sget-object v2, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v2, v0}, Lnu;->e(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 1255
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isDeleteDB()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1256
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v2, p2, p3}, Lnq;->b(J)I

    .line 1259
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->j()V

    .line 1267
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v2, v0}, Lnm;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 1269
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_2
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 485
    iget-boolean v2, p0, Lcom/iflytek/common/download/DownloadService;->f:Z

    if-eqz v2, :cond_0

    .line 503
    :goto_0
    return-void

    .line 490
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->g:Lcom/iflytek/common/download/DownloadService$d;

    if-nez v2, :cond_1

    .line 491
    new-instance v2, Lcom/iflytek/common/download/DownloadService$d;

    invoke-direct {v2, p0}, Lcom/iflytek/common/download/DownloadService$d;-><init>(Lcom/iflytek/common/download/DownloadService;)V

    iput-object v2, p0, Lcom/iflytek/common/download/DownloadService;->g:Lcom/iflytek/common/download/DownloadService$d;

    .line 494
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 495
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.download.handler_service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string/jumbo v2, "com.iflytek.cmcc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->g:Lcom/iflytek/common/download/DownloadService$d;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/common/download/DownloadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/common/download/DownloadService;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/common/download/DownloadService;->f:Z

    goto :goto_0
.end method

.method private b(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 955
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v0, p1, p2}, Lnm;->a(J)V

    .line 956
    return-void
.end method

.method static synthetic b(Lcom/iflytek/common/download/DownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->k()V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/common/download/DownloadService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/download/DownloadService;->c(J)V

    return-void
.end method

.method private b(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 696
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 698
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 699
    const v1, 0xc3ba8

    invoke-virtual {p1, v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->setErrorCode(I)V

    .line 700
    sget-object v1, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v1, p1}, Lnu;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    move v6, v8

    .line 706
    .local v6, "istWaitingTask":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/iflytek/common/download/DownloadService;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 708
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v1

    .line 707
    invoke-static {v2, v3, v1, p0}, Lcom/iflytek/yd/http/factory/HttpRequestFactory;->newDownloadRequestInstance(JILcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpDownload;

    move-result-object v0

    .line 709
    .local v0, "httpDownload":Lcom/iflytek/yd/http/interfaces/HttpDownload;
    invoke-interface {v0, p0}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->setOnHttpDownloadListener(Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;)V

    .line 710
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getSpecifiedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isCover()Z

    move-result v4

    .line 711
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getETag()Ljava/lang/String;

    move-result-object v5

    .line 710
    invoke-interface/range {v0 .. v5}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 714
    new-instance v7, Lcom/iflytek/common/download/DownloadService$b;

    invoke-direct {v7}, Lcom/iflytek/common/download/DownloadService$b;-><init>()V

    .line 715
    .local v7, "item":Lcom/iflytek/common/download/DownloadService$b;
    iput-object p1, v7, Lcom/iflytek/common/download/DownloadService$b;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 716
    iput-object v0, v7, Lcom/iflytek/common/download/DownloadService$b;->b:Lcom/iflytek/yd/http/interfaces/HttpDownload;

    .line 719
    invoke-virtual {p1, v8}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 721
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v1, p1}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    .line 724
    if-eqz v6, :cond_2

    .line 726
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    :cond_2
    sget-object v1, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v1, p1}, Lnu;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 731
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v1, p1}, Lnm;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0

    .end local v0    # "httpDownload":Lcom/iflytek/yd/http/interfaces/HttpDownload;
    .end local v6    # "istWaitingTask":Z
    .end local v7    # "item":Lcom/iflytek/common/download/DownloadService$b;
    :cond_3
    move v6, v1

    .line 704
    goto :goto_1

    .line 735
    .restart local v6    # "istWaitingTask":Z
    :cond_4
    if-nez v6, :cond_0

    .line 737
    invoke-virtual {p1, v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 740
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v1, p1}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    .line 743
    sget-object v1, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v1, p1}, Lnu;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 745
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v1, p1}, Lnm;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/iflytek/common/download/DownloadService;)Lnm;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 510
    :try_start_0
    iget-boolean v1, p0, Lcom/iflytek/common/download/DownloadService;->f:Z

    if-eqz v1, :cond_0

    .line 511
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/common/download/DownloadService;->f:Z

    .line 512
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->g:Lcom/iflytek/common/download/DownloadService$d;

    invoke-virtual {p0, v1}, Lcom/iflytek/common/download/DownloadService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 965
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/DownloadService$b;

    .line 966
    .local v1, "item":Lcom/iflytek/common/download/DownloadService$b;
    if-eqz v1, :cond_0

    .line 967
    iget-object v2, v1, Lcom/iflytek/common/download/DownloadService$b;->b:Lcom/iflytek/yd/http/interfaces/HttpDownload;

    invoke-interface {v2}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->cancel()V

    .line 968
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    :goto_0
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v2, p1, p2}, Lnq;->a(J)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 975
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-nez v0, :cond_1

    .line 990
    :goto_1
    return-void

    .line 970
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 979
    .restart local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setErrorCode(I)V

    .line 980
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setETag(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v0, v4, v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->setCurrentBytes(J)V

    .line 982
    invoke-virtual {v0, v4, v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->setTotleBytes(J)V

    .line 983
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setRetryCnt(I)V

    .line 986
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/common/download/DownloadService;->a(Ljava/lang/String;)V

    .line 989
    invoke-direct {p0, v0}, Lcom/iflytek/common/download/DownloadService;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/iflytek/common/download/DownloadService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/download/DownloadService;->d(J)V

    return-void
.end method

.method private c(Lcom/iflytek/common/download/entities/DownloadInfo;)Z
    .locals 10
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 759
    iget-object v7, p0, Lcom/iflytek/common/download/DownloadService;->i:Lnp;

    invoke-virtual {v7}, Lnp;->b()I

    move-result v4

    .line 760
    .local v4, "totalMaxNumber":I
    iget-object v7, p0, Lcom/iflytek/common/download/DownloadService;->i:Lnp;

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lnp;->a(I)I

    move-result v3

    .line 761
    .local v3, "singleMaxNumber":I
    iget-object v7, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 762
    .local v0, "currentRunningSize":I
    if-lt v0, v4, :cond_1

    .line 782
    :cond_0
    :goto_0
    return v5

    .line 766
    :cond_1
    if-le v3, v0, :cond_2

    move v5, v6

    .line 768
    goto :goto_0

    .line 771
    :cond_2
    const/4 v1, 0x0

    .line 772
    .local v1, "currentTaskSizeForType":I
    iget-object v7, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/download/DownloadService$b;

    .line 773
    .local v2, "item":Lcom/iflytek/common/download/DownloadService$b;
    iget-object v8, v2, Lcom/iflytek/common/download/DownloadService$b;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v8}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v8

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 774
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 778
    .end local v2    # "item":Lcom/iflytek/common/download/DownloadService$b;
    :cond_4
    if-le v3, v1, :cond_0

    move v5, v6

    .line 779
    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/common/download/DownloadService;)Lnq;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    return-object v0
.end method

.method private d()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 912
    iget-object v5, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v5}, Lnq;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 913
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 914
    const/4 v3, 0x0

    .line 915
    .local v3, "updateFlag":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 916
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v2

    .line 917
    .local v2, "status":I
    if-eq v2, v10, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 918
    sget-object v5, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAllDownloadTask info status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " info id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 919
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " info url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " info type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 920
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " info file path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 918
    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/4 v3, 0x1

    .line 925
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v2    # "status":I
    :cond_1
    if-eqz v3, :cond_2

    .line 926
    new-instance v4, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-direct {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;-><init>()V

    .line 927
    .local v4, "updateInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->setVisibility(I)V

    .line 928
    const-wide/16 v6, 0x3f5

    invoke-virtual {v4, v6, v7}, Lcom/iflytek/common/download/entities/DownloadInfo;->setId(J)V

    .line 929
    iget-object v5, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v5, v4}, Lnm;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 933
    .end local v3    # "updateFlag":Z
    .end local v4    # "updateInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 934
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 935
    .restart local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_3

    .line 936
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v2

    .line 937
    .restart local v2    # "status":I
    sget-object v6, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAllDownloadTask | info status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v6, 0x5

    if-eq v2, v6, :cond_3

    if-eq v2, v10, :cond_3

    .line 940
    sget-object v6, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    const-string/jumbo v7, "app create | update running download task to stop"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 943
    iget-object v6, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v6, v0}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    goto :goto_0

    .line 948
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v2    # "status":I
    :cond_4
    return-void
.end method

.method private d(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 998
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/DownloadService$b;

    .line 999
    .local v1, "item":Lcom/iflytek/common/download/DownloadService$b;
    if-eqz v1, :cond_0

    .line 1001
    sget-object v2, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    const/16 v3, 0x385

    invoke-virtual {v2, v3, p1, p2}, Lnu;->a(IJ)V

    .line 1026
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1007
    sget-object v2, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    const/16 v3, 0x38a

    invoke-virtual {v2, v3, p1, p2}, Lnu;->a(IJ)V

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v2, p1, p2}, Lnq;->a(J)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 1013
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-nez v0, :cond_2

    .line 1015
    sget-object v2, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    const/16 v3, 0x387

    invoke-virtual {v2, v3, p1, p2}, Lnu;->a(IJ)V

    goto :goto_0

    .line 1019
    :cond_2
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getRetryCnt()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1021
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/download/DownloadService;->c(J)V

    goto :goto_0

    .line 1024
    :cond_3
    invoke-direct {p0, v0}, Lcom/iflytek/common/download/DownloadService;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/common/download/DownloadService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/download/DownloadService;->a(J)V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v0}, Lnm;->a()V

    .line 952
    return-void
.end method

.method private e(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 1034
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/DownloadService$b;

    .line 1035
    .local v1, "item":Lcom/iflytek/common/download/DownloadService$b;
    if-eqz v1, :cond_0

    .line 1037
    iget-object v2, v1, Lcom/iflytek/common/download/DownloadService$b;->b:Lcom/iflytek/yd/http/interfaces/HttpDownload;

    invoke-interface {v2}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->cancel()V

    .line 1038
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :goto_0
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v2, p1, p2}, Lnq;->a(J)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 1045
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-nez v0, :cond_1

    .line 1063
    :goto_1
    return-void

    .line 1041
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1049
    .restart local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v2, p1, p2}, Lnq;->b(J)I

    .line 1052
    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1053
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/common/download/DownloadService;->a(Ljava/lang/String;)V

    .line 1057
    :cond_2
    sget-object v2, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v2, v0}, Lnu;->g(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 1059
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v2, p1, p2}, Lnm;->a(J)V

    .line 1062
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->j()V

    goto :goto_1
.end method

.method static synthetic e(Lcom/iflytek/common/download/DownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->f()V

    return-void
.end method

.method static synthetic e(Lcom/iflytek/common/download/DownloadService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;
    .param p1, "x1"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/download/DownloadService;->b(J)V

    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1070
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/download/DownloadService$b;

    .line 1071
    .local v2, "item":Lcom/iflytek/common/download/DownloadService$b;
    iget-object v4, v2, Lcom/iflytek/common/download/DownloadService$b;->b:Lcom/iflytek/yd/http/interfaces/HttpDownload;

    invoke-interface {v4}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->cancel()V

    goto :goto_0

    .line 1074
    .end local v2    # "item":Lcom/iflytek/common/download/DownloadService$b;
    :cond_0
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1075
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1077
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v3}, Lnq;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 1078
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz v1, :cond_1

    .line 1079
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 1081
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->setErrorCode(I)V

    .line 1082
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->setETag(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v0, v6, v7}, Lcom/iflytek/common/download/entities/DownloadInfo;->setCurrentBytes(J)V

    .line 1084
    invoke-virtual {v0, v6, v7}, Lcom/iflytek/common/download/entities/DownloadInfo;->setTotleBytes(J)V

    .line 1087
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/iflytek/common/download/DownloadService;->a(Ljava/lang/String;)V

    .line 1090
    invoke-direct {p0, v0}, Lcom/iflytek/common/download/DownloadService;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_1

    .line 1093
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/iflytek/common/download/DownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->h()V

    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 1096
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/download/DownloadService$b;

    .line 1098
    .local v2, "item":Lcom/iflytek/common/download/DownloadService$b;
    iget-object v4, v2, Lcom/iflytek/common/download/DownloadService$b;->b:Lcom/iflytek/yd/http/interfaces/HttpDownload;

    invoke-interface {v4}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->cancel()V

    goto :goto_0

    .line 1102
    .end local v2    # "item":Lcom/iflytek/common/download/DownloadService$b;
    :cond_0
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1103
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1105
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v3}, Lnq;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 1108
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v3}, Lnq;->b()I

    .line 1111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 1112
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/iflytek/common/download/DownloadService;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1116
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    sget-object v3, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v3}, Lnu;->a()V

    .line 1118
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->l:Lnm;

    invoke-virtual {v3}, Lnm;->a()V

    .line 1119
    return-void
.end method

.method static synthetic g(Lcom/iflytek/common/download/DownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->g()V

    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v2}, Lnq;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 1123
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1144
    :cond_0
    return-void

    .line 1128
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 1129
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 1134
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isRange()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1136
    invoke-direct {p0, v0}, Lcom/iflytek/common/download/DownloadService;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0

    .line 1137
    :cond_3
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isRange()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1140
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lnq;->b(J)I

    .line 1141
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/iflytek/common/download/DownloadService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/iflytek/common/download/DownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->d()V

    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    .line 1147
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1151
    :cond_0
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/DownloadService$b;

    .line 1153
    .local v1, "item":Lcom/iflytek/common/download/DownloadService$b;
    iget-object v3, v1, Lcom/iflytek/common/download/DownloadService$b;->b:Lcom/iflytek/yd/http/interfaces/HttpDownload;

    invoke-interface {v3}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->cancel()V

    .line 1155
    iget-object v0, v1, Lcom/iflytek/common/download/DownloadService$b;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 1157
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 1159
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isRange()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1160
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v3, v0}, Lnq;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    goto :goto_1

    .line 1163
    :cond_1
    iget-object v3, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lnq;->b(J)I

    .line 1164
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/iflytek/common/download/DownloadService;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1169
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v1    # "item":Lcom/iflytek/common/download/DownloadService$b;
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1170
    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1173
    sget-object v2, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    invoke-virtual {v2}, Lnu;->b()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/iflytek/common/download/DownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/download/DownloadService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->e()V

    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 1306
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 1307
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-direct {p0, v0}, Lcom/iflytek/common/download/DownloadService;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1309
    invoke-direct {p0, v0}, Lcom/iflytek/common/download/DownloadService;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0

    .line 1314
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 1320
    sget-object v0, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    const-string/jumbo v1, "checkServiceCanStop"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    invoke-virtual {v0}, Lcom/iflytek/common/download/DownloadService$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    invoke-virtual {p0}, Lcom/iflytek/common/download/DownloadService;->stopSelf()V

    .line 1327
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->c()V

    .line 1330
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    invoke-virtual {v0}, Lnq;->close()V

    goto :goto_0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 1412
    return-object p0
.end method

.method public getHttpHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->h:Lhk;

    invoke-virtual {v0}, Lhk;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method public getUserPasswordCred()Lorg/apache/http/auth/UsernamePasswordCredentials;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->h:Lhk;

    invoke-virtual {v0}, Lhk;->e()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 439
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot bind to Download Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 443
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 445
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->b()V

    .line 447
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Download Handler Thread"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/iflytek/common/download/DownloadService;->k:Landroid/os/HandlerThread;

    .line 449
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 450
    new-instance v0, Lcom/iflytek/common/download/DownloadService$a;

    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/common/download/DownloadService$a;-><init>(Lcom/iflytek/common/download/DownloadService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    .line 452
    invoke-virtual {p0}, Lcom/iflytek/common/download/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnp;->a(Landroid/content/Context;)Lnp;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/download/DownloadService;->i:Lnp;

    .line 453
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->i:Lnp;

    invoke-virtual {v0}, Lnp;->a()Lhk;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/download/DownloadService;->h:Lhk;

    .line 454
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->i:Lnp;

    invoke-virtual {v0}, Lnp;->f()Lnq;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/download/DownloadService;->d:Lnq;

    .line 455
    new-instance v0, Lnu;

    invoke-direct {v0, p0}, Lnu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/common/download/DownloadService;->e:Lnu;

    .line 457
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/download/DownloadService;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 458
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/download/DownloadService;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 459
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 470
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 471
    sget-object v0, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->i()V

    .line 476
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService;->c()V

    .line 478
    iget-object v0, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    invoke-virtual {v0}, Lcom/iflytek/common/download/DownloadService$a;->b()V

    .line 479
    return-void
.end method

.method public onError(ILjava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpDownload;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorDetail"    # Ljava/lang/String;
    .param p3, "download"    # Lcom/iflytek/yd/http/interfaces/HttpDownload;

    .prologue
    .line 1350
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    sget-object v1, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 1354
    new-instance v0, Lcom/iflytek/common/download/DownloadService$c;

    invoke-direct {v0}, Lcom/iflytek/common/download/DownloadService$c;-><init>()V

    .line 1355
    .local v0, "info":Lcom/iflytek/common/download/DownloadService$c;
    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->getId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/iflytek/common/download/DownloadService$c;->a:J

    .line 1356
    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->getType()I

    move-result v1

    iput v1, v0, Lcom/iflytek/common/download/DownloadService$c;->b:I

    .line 1357
    iput p1, v0, Lcom/iflytek/common/download/DownloadService$c;->c:I

    .line 1358
    iput-object p2, v0, Lcom/iflytek/common/download/DownloadService$c;->d:Ljava/lang/String;

    .line 1359
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    .line 1361
    .end local v0    # "info":Lcom/iflytek/common/download/DownloadService$c;
    :cond_1
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpDownload;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "download"    # Lcom/iflytek/yd/http/interfaces/HttpDownload;

    .prologue
    .line 1365
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1366
    sget-object v1, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFinish filename : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 1370
    new-instance v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-direct {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;-><init>()V

    .line 1371
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setId(J)V

    .line 1372
    invoke-virtual {v0, p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->setFilePath(Ljava/lang/String;)V

    .line 1373
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    .line 1375
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    return-void
.end method

.method public onProgress(JILcom/iflytek/yd/http/interfaces/HttpDownload;)V
    .locals 5
    .param p1, "currentBytes"    # J
    .param p3, "percent"    # I
    .param p4, "download"    # Lcom/iflytek/yd/http/interfaces/HttpDownload;

    .prologue
    .line 1379
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1380
    sget-object v1, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProgress percent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " currentBytes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    .line 1384
    new-instance v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-direct {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;-><init>()V

    .line 1385
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-interface {p4}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setId(J)V

    .line 1386
    invoke-virtual {v0, p1, p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setCurrentBytes(J)V

    .line 1387
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    const/4 v3, 0x4

    .line 1388
    invoke-interface {p4}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->getType()I

    move-result v4

    .line 1387
    invoke-virtual {v2, v3, p3, v4, v0}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    .line 1390
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    return-void
.end method

.method public onStart(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpDownload;)V
    .locals 5
    .param p1, "length"    # J
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "newPath"    # Ljava/lang/String;
    .param p5, "eTag"    # Ljava/lang/String;
    .param p6, "download"    # Lcom/iflytek/yd/http/interfaces/HttpDownload;

    .prologue
    .line 1394
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1395
    sget-object v1, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStart length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mimeType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " newPath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " eTag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    if-eqz v1, :cond_1

    if-eqz p6, :cond_1

    .line 1400
    new-instance v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-direct {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;-><init>()V

    .line 1401
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-interface {p6}, Lcom/iflytek/yd/http/interfaces/HttpDownload;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setId(J)V

    .line 1402
    invoke-virtual {v0, p1, p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->setTotleBytes(J)V

    .line 1403
    invoke-virtual {v0, p3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setMimeType(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v0, p4}, Lcom/iflytek/common/download/entities/DownloadInfo;->setFilePath(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v0, p5}, Lcom/iflytek/common/download/entities/DownloadInfo;->setETag(Ljava/lang/String;)V

    .line 1406
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    iget-object v2, p0, Lcom/iflytek/common/download/DownloadService;->j:Lcom/iflytek/common/download/DownloadService$a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/common/download/DownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/common/download/DownloadService$a;->a(Landroid/os/Message;)Z

    .line 1408
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/iflytek/common/download/DownloadService;->a(Landroid/content/Intent;)V

    .line 465
    const/4 v0, 0x2

    return v0
.end method
