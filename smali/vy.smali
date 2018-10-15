.class public Lvy;
.super Ljava/lang/Object;
.source "BusinessManager.java"

# interfaces
.implements Lcom/iflytek/yd/http/listener/OnHttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvy$a;
    }
.end annotation


# static fields
.field private static g:Lapc;


# instance fields
.field protected a:Lcom/iflytek/yd/http/interfaces/HttpContext;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lvy$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

.field private d:Lyn;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lapc;->a()Lapc;

    move-result-object v0

    sput-object v0, Lvy;->g:Lapc;

    return-void
.end method

.method public constructor <init>(Lyn;Lcom/iflytek/yd/http/interfaces/HttpContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lyn;
    .param p2, "context"    # Lcom/iflytek/yd/http/interfaces/HttpContext;
    .param p3, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvy;->h:Z

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvy;->b:Ljava/util/HashMap;

    .line 83
    iput-object p1, p0, Lvy;->d:Lyn;

    .line 84
    iput-object p2, p0, Lvy;->a:Lcom/iflytek/yd/http/interfaces/HttpContext;

    .line 85
    iput-object p3, p0, Lvy;->e:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvy;->f:Ljava/util/Map;

    .line 87
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "mode"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 506
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v2

    .line 507
    .local v2, "config":Lcom/iflytek/yd/business/AppConfig;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 509
    .local v1, "baseNode":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "aid"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    const-string/jumbo v4, "ver"

    const-string/jumbo v5, "1.0"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    const-string/jumbo v4, "clientver"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const-string/jumbo v4, "apn"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string/jumbo v5, "imei"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    :goto_0
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string/jumbo v5, "imsi"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    :goto_1
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    const-string/jumbo v4, "token"

    .line 516
    invoke-static {p1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v5

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v5

    .line 515
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string/jumbo v4, "uid"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string/jumbo v4, "osid"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string/jumbo v4, "ua"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string/jumbo v4, "df"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string/jumbo v4, "mode"

    invoke-virtual {v1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string/jumbo v4, "cpu"

    invoke-static {}, Lazg;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string/jumbo v4, "androidid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v5

    invoke-virtual {v5}, Lhy;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string/jumbo v4, "mac"

    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string/jumbo v4, "cellid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v5

    invoke-virtual {v5}, Lhy;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string/jumbo v4, "uuid"

    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v5

    invoke-virtual {v5}, Lhl;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    invoke-static {}, Loa;->a()Loa;

    move-result-object v4

    invoke-virtual {v4}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 530
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v0, :cond_0

    .line 531
    const-string/jumbo v4, "long"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    const-string/jumbo v4, "lat"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    const-string/jumbo v4, "pos"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const-string/jumbo v4, "city"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    const-string/jumbo v4, "street"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getStreet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 540
    .end local v0    # "address":Lcom/iflytek/common/lbs/XAddress;
    :cond_0
    :goto_2
    return-object v1

    .line 513
    :cond_1
    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 514
    :cond_2
    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_1

    .line 537
    :catch_0
    move-exception v3

    .line 538
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "ViaFly_BusinessManager"

    const-string/jumbo v5, "package json base node exception"

    invoke-static {v4, v5, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private a(IJILcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "id"    # J
    .param p4, "type"    # I
    .param p5, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 726
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, "occurError"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    sget-object v0, Lvy;->g:Lapc;

    invoke-interface {p5}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lapc;->a(JI)V

    .line 728
    iget-object v0, p0, Lvy;->d:Lyn;

    if-eqz v0, :cond_0

    .line 729
    iget-object v1, p0, Lvy;->d:Lyn;

    const/4 v3, 0x0

    move v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lyn;->onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V

    .line 731
    :cond_0
    return-void
.end method

.method private a(Lcom/iflytek/yd/business/OperationInfo;JILcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 8
    .param p1, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p2, "id"    # J
    .param p4, "type"    # I
    .param p5, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 734
    iget-object v0, p0, Lvy;->d:Lyn;

    if-eqz v0, :cond_0

    .line 735
    iget-object v1, p0, Lvy;->d:Lyn;

    const/4 v2, 0x0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lyn;->onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V

    .line 737
    :cond_0
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 544
    const/16 v0, 0x47

    if-ne p1, v0, :cond_0

    .line 545
    const-string/jumbo v0, "x%73h"

    .line 548
    :goto_0
    return-object v0

    .line 547
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v0

    iget-object v1, p0, Lvy;->a:Lcom/iflytek/yd/http/interfaces/HttpContext;

    invoke-interface {v1}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b(Landroid/content/Context;)Lapy;

    move-result-object v0

    .line 548
    invoke-interface {v0}, Lapy;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v2

    .line 465
    .local v2, "config":Lcom/iflytek/yd/business/AppConfig;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 467
    .local v1, "baseNode":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "aid"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    const-string/jumbo v4, "ver"

    const-string/jumbo v5, "1.0"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    const-string/jumbo v4, "clientver"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v4, "apn"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string/jumbo v5, "imei"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    :goto_0
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string/jumbo v5, "imsi"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    :goto_1
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    const-string/jumbo v4, "token"

    .line 474
    invoke-static {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v5

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string/jumbo v4, "uid"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    const-string/jumbo v4, "osid"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string/jumbo v4, "ua"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    const-string/jumbo v4, "df"

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    const-string/jumbo v4, "cpu"

    invoke-static {}, Lazg;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string/jumbo v4, "androidid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v5

    invoke-virtual {v5}, Lhy;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string/jumbo v4, "mac"

    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    const-string/jumbo v4, "cellid"

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v5

    invoke-virtual {v5}, Lhy;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    const-string/jumbo v4, "uuid"

    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v5

    invoke-virtual {v5}, Lhl;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    invoke-static {}, Loa;->a()Loa;

    move-result-object v4

    invoke-virtual {v4}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 487
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v0, :cond_0

    .line 488
    const-string/jumbo v4, "long"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string/jumbo v4, "lat"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string/jumbo v4, "pos"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string/jumbo v4, "city"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    const-string/jumbo v4, "street"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getStreet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    .end local v0    # "address":Lcom/iflytek/common/lbs/XAddress;
    :cond_0
    :goto_2
    return-object v1

    .line 471
    :cond_1
    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 472
    :cond_2
    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_1

    .line 494
    :catch_0
    move-exception v3

    .line 495
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "ViaFly_BusinessManager"

    const-string/jumbo v5, "package json base node exception"

    invoke-static {v4, v5, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/String;)J
    .locals 19
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "cmdType"    # Ljava/lang/String;

    .prologue
    .line 553
    const-string/jumbo v3, "ViaFly_BusinessManager"

    const-string/jumbo v6, "startRequestDESGZIP"

    invoke-static {v3, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lvy;->a:Lcom/iflytek/yd/http/interfaces/HttpContext;

    move-wide/from16 v0, v17

    move/from16 v2, p1

    invoke-static {v0, v1, v2, v3, v6}, Lcom/iflytek/yd/http/factory/HttpRequestFactory;->newSimpleRequestInstance(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 556
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v4

    .line 557
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->setOnHttpRequestListener(Lcom/iflytek/yd/http/listener/OnHttpRequestListener;)V

    .line 559
    const-string/jumbo v3, "ViaFly_BusinessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "startRequest:"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 561
    .local v12, "mByteData":[B
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMddHHmmss"

    invoke-static {}, Lbaa;->b()Ljava/util/Locale;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 563
    .local v14, "time":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p1}, Lvy;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v14, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 564
    .local v10, "key":Ljava/lang/String;
    const-string/jumbo v3, "ViaFly_BusinessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "DES deskey = "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 566
    .local v11, "key_data":[B
    invoke-static {v12, v11}, Lcom/iflytek/yd/util/security/DESEncrypter;->desEncrypt([B[B)[B

    move-result-object v12

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->f:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lvy;->e:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 571
    .local v16, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lvy;->e:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "&t="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 574
    :try_start_0
    invoke-static {v12}, Lwb;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 580
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->a:Lcom/iflytek/yd/http/interfaces/HttpContext;

    invoke-interface {v3}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwe;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 581
    invoke-static {}, Lwe;->a()Ljava/lang/String;

    move-result-object v15

    .line 582
    .local v15, "unikey":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "&unikey="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 585
    .end local v15    # "unikey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "ViaFly_BusinessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "url = "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v13, Lvy$a;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Lvy$a;-><init>(Lvy;Lvy$1;)V

    .line 587
    .local v13, "request":Lvy$a;
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    iput-object v3, v13, Lvy$a;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->b:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-wide/16 v7, -0x1

    .line 592
    .local v7, "reqSize":J
    if-eqz v12, :cond_1

    .line 593
    array-length v3, v12

    int-to-long v7, v3

    .line 595
    :cond_1
    sget-object v3, Lvy;->g:Lapc;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Lapc;->a(JLjava/lang/String;J)V

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v12}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->post(Ljava/lang/String;[B)V

    .line 598
    return-wide v4

    .line 575
    .end local v7    # "reqSize":J
    .end local v13    # "request":Lvy$a;
    :catch_0
    move-exception v9

    .line 576
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ViaFly_BusinessManager"

    const-string/jumbo v6, "startRequest() gZip error!"

    invoke-static {v3, v6, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method protected a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;)J
    .locals 21
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "addOnes"    # [B
    .param p4, "cmdType"    # Ljava/lang/String;
    .param p5, "ver"    # Ljava/lang/String;

    .prologue
    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lvy;->a:Lcom/iflytek/yd/http/interfaces/HttpContext;

    move-wide/from16 v0, v19

    move/from16 v2, p1

    invoke-static {v0, v1, v2, v3, v6}, Lcom/iflytek/yd/http/factory/HttpRequestFactory;->newSimpleRequestInstance(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v4

    .line 605
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->setOnHttpRequestListener(Lcom/iflytek/yd/http/listener/OnHttpRequestListener;)V

    .line 607
    const-string/jumbo v3, "ViaFly_BusinessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "startRequest:"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 609
    .local v13, "mByteData":[B
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMddHHmmss"

    invoke-static {}, Lbaa;->b()Ljava/util/Locale;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 610
    .local v15, "time":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lvy;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p1}, Lvy;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v15, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 612
    .local v10, "key":Ljava/lang/String;
    const-string/jumbo v3, "ViaFly_BusinessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "DES deskey = "

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 614
    .local v11, "key_data":[B
    invoke-static {v13, v11}, Lcom/iflytek/yd/util/security/DESEncrypter;->desEncrypt([B[B)[B

    move-result-object v13

    .line 617
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "key_data":[B
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lvy;->e:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 619
    .local v17, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lvy;->e:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "&v="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "&t="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 621
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lvy;->h:Z

    if-eqz v3, :cond_3

    .line 624
    :try_start_0
    invoke-static {v13}, Lwb;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 629
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->f:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, v13

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 631
    .local v12, "m":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v13, v3}, Lwb;->a([B[B)[B

    move-result-object v13

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "&gz=1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 638
    .end local v12    # "m":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->a:Lcom/iflytek/yd/http/interfaces/HttpContext;

    invoke-interface {v3}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwe;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 639
    invoke-static {}, Lwe;->a()Ljava/lang/String;

    move-result-object v16

    .line 640
    .local v16, "unikey":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "&unikey="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 643
    .end local v16    # "unikey":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "ViaFly_BusinessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "url = "

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v14, Lvy$a;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lvy$a;-><init>(Lvy;Lvy$1;)V

    .line 645
    .local v14, "request":Lvy$a;
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    iput-object v3, v14, Lvy$a;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 646
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->b:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-wide/16 v7, -0x1

    .line 650
    .local v7, "reqSize":J
    if-eqz v13, :cond_2

    .line 651
    array-length v3, v13

    int-to-long v7, v3

    .line 653
    :cond_2
    sget-object v3, Lvy;->g:Lapc;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Lapc;->a(JLjava/lang/String;J)V

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-object/from16 v0, v17

    invoke-interface {v3, v0, v13}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->post(Ljava/lang/String;[B)V

    .line 656
    return-wide v4

    .line 625
    .end local v7    # "reqSize":J
    .end local v14    # "request":Lvy$a;
    :catch_0
    move-exception v9

    .line 626
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ViaFly_BusinessManager"

    const-string/jumbo v6, "startRequest() gZip error!"

    invoke-static {v3, v6, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 635
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "&gz=0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmdType"    # Ljava/lang/String;
    .param p3, "businessType"    # I
    .param p4, "paramElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 204
    const-string/jumbo v5, "0"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lvy;->a(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)J
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmdType"    # Ljava/lang/String;
    .param p3, "businessType"    # I
    .param p4, "paramElement"    # Lcom/iflytek/yd/util/xml/XmlElement;
    .param p5, "mode"    # Ljava/lang/String;

    .prologue
    .line 281
    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 282
    :cond_0
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, "request() | param is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-wide/16 v0, -0x1

    .line 298
    :goto_0
    return-wide v0

    .line 285
    :cond_1
    new-instance v7, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v7}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 286
    .local v7, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v0, "request"

    invoke-virtual {v7, v0}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    .line 288
    .local v8, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v0, "cmd"

    invoke-virtual {v8, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, p1}, Lvy;->a(Landroid/content/Context;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v6

    .line 291
    .local v6, "base":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v0, "mode"

    invoke-virtual {v6, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v8, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 295
    invoke-virtual {v8, p4}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 297
    invoke-static {v7}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "sRequest":Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v5, "2.0"

    move-object v0, p0

    move v1, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lvy;->a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)J
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmdType"    # Ljava/lang/String;
    .param p3, "businessType"    # I
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "paramElement"    # Lorg/json/JSONObject;

    .prologue
    .line 311
    if-eqz p2, :cond_0

    if-nez p5, :cond_1

    .line 312
    :cond_0
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, "request() | param is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-wide/16 v0, -0x1

    .line 327
    :goto_0
    return-wide v0

    .line 315
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 318
    .local v7, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v0, "cmd"

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string/jumbo v0, "base"

    invoke-static {p4, p1}, Lvy;->a(Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string/jumbo v0, "param"

    invoke-virtual {v7, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "sRequest":Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v5, "1.0"

    move-object v0, p0

    move v1, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lvy;->a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 323
    .end local v2    # "sRequest":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 324
    .local v6, "ex":Lorg/json/JSONException;
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, "package json request exception"

    invoke-static {v0, v1, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONObject;)J
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmdType"    # Ljava/lang/String;
    .param p3, "businessType"    # I
    .param p4, "paramElement"    # Lorg/json/JSONObject;

    .prologue
    .line 415
    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 416
    :cond_0
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, "request() | param is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-wide/16 v0, -0x1

    .line 431
    :goto_0
    return-wide v0

    .line 419
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 422
    .local v7, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v0, "cmd"

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string/jumbo v0, "base"

    invoke-static {p1}, Lvy;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string/jumbo v0, "param"

    invoke-virtual {v7, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "sRequest":Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v5, "1.0"

    move-object v0, p0

    move v1, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lvy;->a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 427
    .end local v2    # "sRequest":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 428
    .local v6, "ex":Lorg/json/JSONException;
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, "package json request exception"

    invoke-static {v0, v1, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/framework/lms/LmsCallInfo;Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/yd/util/xml/XmlElement;)J
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmdType"    # Ljava/lang/String;
    .param p3, "lmsCallInfo"    # Lcom/iflytek/framework/lms/LmsCallInfo;
    .param p4, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p5, "businessType"    # I
    .param p6, "paramElement"    # Lcom/iflytek/yd/util/xml/XmlElement;

    .prologue
    .line 218
    if-eqz p2, :cond_0

    if-nez p6, :cond_1

    .line 219
    :cond_0
    const-string/jumbo v2, "ViaFly_BusinessManager"

    const-string/jumbo v3, "request() | param is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-wide/16 v2, -0x1

    .line 268
    :goto_0
    return-wide v2

    .line 223
    :cond_1
    new-instance v11, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v11}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 224
    .local v11, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "request"

    invoke-virtual {v11, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v13

    .line 226
    .local v13, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "cmd"

    invoke-virtual {v13, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 228
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v10

    .line 229
    .local v10, "config":Lcom/iflytek/yd/business/AppConfig;
    new-instance v9, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v2, "base"

    invoke-direct {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 230
    .local v9, "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "appid"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v2, "ver"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "2.0"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v2, "clientver"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v2, "apn"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 234
    const-string/jumbo v2, "imei"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v2, "imsi"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    .line 236
    move-object/from16 v0, p4

    invoke-static {v0, p1}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v2, "token"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    .line 244
    invoke-static {p1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 246
    const-string/jumbo v2, "uid"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v2, "osid"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v2, "ua"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 249
    const-string/jumbo v2, "df"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 251
    if-eqz p3, :cond_3

    .line 252
    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/framework/lms/LmsCallInfo;->getAppkey()Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "appkey":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/framework/lms/LmsCallInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, "pkgName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 255
    const-string/jumbo v2, "appkey"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 257
    :cond_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 258
    const-string/jumbo v2, "pkgname"

    invoke-virtual {v9, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 262
    .end local v8    # "appkey":Ljava/lang/String;
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v13, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 265
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 267
    invoke-static {v11}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "sRequest":Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v7, "2.0"

    move-object v2, p0

    move/from16 v3, p5

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lvy;->a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)J
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "cmdType"    # Ljava/lang/String;
    .param p4, "businessType"    # I
    .param p5, "paramElement"    # Lorg/json/JSONObject;

    .prologue
    .line 332
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 333
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, "request() | param is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-wide/16 v0, -0x1

    .line 349
    :goto_0
    return-wide v0

    .line 337
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 340
    .local v7, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v0, "cmd"

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string/jumbo v0, "base"

    invoke-static {p1}, Lvy;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string/jumbo v0, "param"

    invoke-virtual {v7, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "sRequest":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p4

    move-object v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lvy;->a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 345
    .end local v2    # "sRequest":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 346
    .local v6, "ex":Lorg/json/JSONException;
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, "package json request exception"

    invoke-static {v0, v1, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "cmdType"    # Ljava/lang/String;
    .param p4, "businessType"    # I
    .param p5, "paramElement"    # Lorg/json/JSONObject;
    .param p6, "mode"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 365
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, "request() | param is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-wide/16 v0, -0x1

    .line 381
    :goto_0
    return-wide v0

    .line 369
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 372
    .local v7, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v0, "cmd"

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string/jumbo v0, "base"

    invoke-static {p6, p1}, Lvy;->a(Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string/jumbo v0, "param"

    invoke-virtual {v7, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "sRequest":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p4

    move-object v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lvy;->a(ILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 377
    .end local v2    # "sRequest":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 378
    .local v6, "ex":Lorg/json/JSONException;
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, "package json request exception"

    invoke-static {v0, v1, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)J
    .locals 6
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "cmdType"    # Ljava/lang/String;
    .param p3, "businessType"    # I
    .param p4, "baseElement"    # Lorg/json/JSONObject;
    .param p5, "paramElement"    # Lorg/json/JSONObject;

    .prologue
    .line 386
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p5, :cond_0

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    :cond_0
    const-string/jumbo v3, "ViaFly_BusinessManager"

    const-string/jumbo v4, "request() | param is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-wide/16 v4, -0x1

    .line 403
    :goto_0
    return-wide v4

    .line 391
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 396
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "base"

    invoke-virtual {v1, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string/jumbo v3, "param"

    invoke-virtual {v1, v3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "sRequest":Ljava/lang/String;
    invoke-virtual {p0, p3, v2, p2}, Lvy;->a(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 399
    .end local v2    # "sRequest":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v3, "ViaFly_BusinessManager"

    const-string/jumbo v4, "package json request exception"

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected a(Landroid/content/Context;)Lcom/iflytek/yd/util/xml/XmlElement;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 435
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v1

    .line 436
    .local v1, "config":Lcom/iflytek/yd/business/AppConfig;
    new-instance v0, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v2, "base"

    invoke-direct {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "appid"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 438
    const-string/jumbo v2, "ver"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "2.0"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 439
    const-string/jumbo v2, "clientver"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 440
    const-string/jumbo v2, "apn"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 441
    const-string/jumbo v2, "imei"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 442
    const-string/jumbo v2, "imsi"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    .line 444
    invoke-static {p1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v3

    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v3, v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 445
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 446
    const-string/jumbo v2, "osid"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 447
    const-string/jumbo v2, "ua"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 448
    const-string/jumbo v2, "df"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 450
    const-string/jumbo v2, "cpu"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {}, Lazg;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 451
    const-string/jumbo v2, "androidid"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v3

    invoke-virtual {v3}, Lhy;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 452
    const-string/jumbo v2, "mac"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 453
    const-string/jumbo v2, "cellid"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v3

    invoke-virtual {v3}, Lhy;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 454
    const-string/jumbo v2, "uuid"

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-virtual {v3}, Lhl;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 455
    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 711
    iget-object v0, p0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lvy;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v1}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v0, p0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->cancel()V

    .line 715
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4
    .param p1, "businessType"    # I
    .param p2, "reportUrl"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    iget-object v3, p0, Lvy;->a:Lcom/iflytek/yd/http/interfaces/HttpContext;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/iflytek/yd/http/factory/HttpRequestFactory;->newSimpleRequestInstance(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v0

    iput-object v0, p0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 671
    iget-object v0, p0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v0, p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->get(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 3
    .param p1, "requestId"    # J

    .prologue
    .line 718
    iget-object v1, p0, Lvy;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvy$a;

    .line 719
    .local v0, "request":Lvy$a;
    if-eqz v0, :cond_0

    .line 720
    iget-object v1, p0, Lvy;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v1, v0, Lvy$a;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v1}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->cancel()V

    .line 723
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lvy;->e:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public a(Lyn;)V
    .locals 0
    .param p1, "listener"    # Lyn;

    .prologue
    .line 90
    iput-object p1, p0, Lvy;->d:Lyn;

    .line 91
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lvy;->h:Z

    .line 72
    return-void
.end method

.method public a(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 696
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x47

    if-ne p1, v0, :cond_1

    .line 705
    :cond_0
    const/4 v0, 0x1

    .line 707
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "businessType"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "reportUrl"    # Ljava/lang/String;

    .prologue
    .line 681
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    iget-object v4, p0, Lvy;->a:Lcom/iflytek/yd/http/interfaces/HttpContext;

    invoke-static {v2, v3, p1, v1, v4}, Lcom/iflytek/yd/http/factory/HttpRequestFactory;->newSimpleRequestInstance(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v1

    iput-object v1, p0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 686
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 687
    .local v0, "mByteData":[B
    iget-object v1, p0, Lvy;->c:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v1, p3, v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->post(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 785
    iget-object v0, p0, Lvy;->b:Ljava/util/HashMap;

    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lvy;->f:Ljava/util/Map;

    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string/jumbo v0, "ViaFly_BusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " onErrorDetail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lvy;->a(IJILcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V

    .line 789
    return-void
.end method

.method public onRequestEnd(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 793
    sget-object v0, Lvy;->g:Lapc;

    invoke-interface {p1}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lapc;->a(J)V

    .line 794
    return-void
.end method

.method public onResponseStart(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 798
    sget-object v0, Lvy;->g:Lapc;

    invoke-interface {p1}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lapc;->b(J)V

    .line 799
    return-void
.end method

.method public onResult([BLcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 11
    .param p1, "result"    # [B
    .param p2, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    const/16 v10, 0x47

    .line 741
    iget-object v0, p0, Lvy;->b:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Lvy;->f:Ljava/util/Map;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 743
    .local v9, "time":Ljava/lang/String;
    iget-object v0, p0, Lvy;->f:Ljava/util/Map;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 745
    :cond_0
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, " onResult RESULT_IS_NULL "

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const v1, 0xc3ba7

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    .line 747
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    .line 746
    invoke-direct/range {v0 .. v5}, Lvy;->a(IJILcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V

    .line 781
    :goto_0
    return-void

    .line 749
    :cond_1
    sget-object v0, Lvy;->g:Lapc;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    array-length v1, p1

    int-to-long v4, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lapc;->a(JJ)V

    .line 750
    const-string/jumbo v0, "ViaFly_BusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v8, 0x0

    .line 752
    .local v8, "str_res":Ljava/lang/String;
    iget-boolean v0, p0, Lvy;->h:Z

    if-eqz v0, :cond_2

    .line 753
    const-string/jumbo v0, "ViaFly_BusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResult, xor\'s time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lvy;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 761
    .local v7, "m":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v0

    if-ne v0, v10, :cond_4

    .line 762
    invoke-static {p1}, Lwb;->b([B)[B

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/security/DESEncrypter;->desDecrypt([B[B)[B

    move-result-object p1

    .line 763
    const-string/jumbo v0, "ViaFly_BusinessManager"

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .end local v7    # "m":Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz p1, :cond_5

    new-instance v8, Ljava/lang/String;

    .end local v8    # "str_res":Ljava/lang/String;
    invoke-direct {v8, p1}, Ljava/lang/String;-><init>([B)V

    .line 775
    .restart local v8    # "str_res":Ljava/lang/String;
    :goto_3
    const-string/jumbo v0, "ViaFly_BusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lvy;->a:Lcom/iflytek/yd/http/interfaces/HttpContext;

    invoke-interface {v0}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnb;->a(Landroid/content/Context;)Lnb;

    move-result-object v0

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lnb;->a(Ljava/lang/String;I)V

    .line 778
    new-instance v1, Lwa;

    invoke-direct {v1, v8}, Lwa;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    .line 779
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    .line 778
    invoke-direct/range {v0 .. v5}, Lvy;->a(Lcom/iflytek/yd/business/OperationInfo;JILcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V

    goto/16 :goto_0

    .line 758
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "m":Ljava/lang/String;
    goto :goto_1

    .line 767
    :cond_4
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lwb;->a([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lwb;->b([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_2

    .line 769
    :catch_0
    move-exception v6

    .line 770
    .local v6, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 771
    const-string/jumbo v0, "ViaFly_BusinessManager"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v6}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 774
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "m":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto :goto_3
.end method
