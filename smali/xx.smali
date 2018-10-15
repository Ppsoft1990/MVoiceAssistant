.class public Lxx;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Lcom/iflytek/yd/http/listener/OnHttpRequestListener;
.implements Lyo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxx$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lxx$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

.field private c:Lyn;

.field private d:Lcom/iflytek/yd/business/AppConfig;

.field private e:Lcom/iflytek/yd/http/interfaces/HttpContext;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lyn;Lcom/iflytek/yd/http/interfaces/HttpContext;Lcom/iflytek/yd/business/AppConfig;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lyn;
    .param p2, "context"    # Lcom/iflytek/yd/http/interfaces/HttpContext;
    .param p3, "appConfig"    # Lcom/iflytek/yd/business/AppConfig;
    .param p4, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxx;->a:Ljava/util/HashMap;

    .line 100
    iput-object p1, p0, Lxx;->c:Lyn;

    .line 101
    iput-object p2, p0, Lxx;->e:Lcom/iflytek/yd/http/interfaces/HttpContext;

    .line 102
    iput-object p3, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    .line 103
    iput-object p4, p0, Lxx;->f:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxx;->g:Ljava/util/Map;

    .line 105
    return-void
.end method

.method private a(ILjava/lang/String;)J
    .locals 12
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    iget-object v11, p0, Lxx;->e:Lcom/iflytek/yd/http/interfaces/HttpContext;

    invoke-static {v8, v9, p1, v10, v11}, Lcom/iflytek/yd/http/factory/HttpRequestFactory;->newSimpleRequestInstance(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v8

    iput-object v8, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 745
    iget-object v8, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v8}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    .line 746
    .local v2, "id":J
    iget-object v8, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v8, p0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->setOnHttpRequestListener(Lcom/iflytek/yd/http/listener/OnHttpRequestListener;)V

    .line 748
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 750
    .local v4, "mByteData":[B
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 751
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 753
    .local v6, "time":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lxx;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&v="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "2.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&t="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 756
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lwb;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 761
    :goto_0
    iget-object v8, p0, Lxx;->g:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, "m":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v4, v8}, Lwb;->a([B[B)[B

    move-result-object v4

    .line 765
    const-string/jumbo v8, "UserManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "url = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const-string/jumbo v8, "UserManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "post data  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v5, Lxx$a;

    invoke-direct {v5, p0}, Lxx$a;-><init>(Lxx;)V

    .line 769
    .local v5, "request":Lxx$a;
    iget-object v8, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    iput-object v8, v5, Lxx$a;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 770
    iget-object v8, p0, Lxx;->a:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v8, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v8, v7, v4}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->post(Ljava/lang/String;[B)V

    .line 773
    return-wide v2

    .line 757
    .end local v1    # "m":Ljava/lang/String;
    .end local v5    # "request":Lxx$a;
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "UserManager"

    const-string/jumbo v9, "startRequest() gZip error!"

    invoke-static {v8, v9, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(ILjava/lang/String;[BLjava/lang/String;)J
    .locals 6
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "addOnes"    # [B
    .param p4, "cmd"    # Ljava/lang/String;

    .prologue
    .line 681
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lxx;->a(ILjava/lang/String;[BLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(ILjava/lang/String;[BLjava/lang/String;Z)J
    .locals 10
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "addOnes"    # [B
    .param p4, "cmd"    # Ljava/lang/String;
    .param p5, "isZip"    # Z

    .prologue
    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lxx;->e:Lcom/iflytek/yd/http/interfaces/HttpContext;

    invoke-static {v8, v9, p1, p5, v7}, Lcom/iflytek/yd/http/factory/HttpRequestFactory;->newSimpleRequestInstance(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v7

    iput-object v7, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 690
    iget-object v7, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v7}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    .line 691
    .local v2, "id":J
    iget-object v7, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v7, p0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->setOnHttpRequestListener(Lcom/iflytek/yd/http/listener/OnHttpRequestListener;)V

    .line 694
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 695
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 698
    .local v5, "time":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lxx;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 701
    .local v6, "url":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 702
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&cmd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 706
    :cond_0
    const/16 v7, 0x8

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    .line 709
    .local v1, "key":[B
    const/4 v7, 0x5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 710
    const/4 v7, 0x6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 711
    const/4 v7, 0x7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 714
    invoke-direct {p0, p2, v1, p3}, Lxx;->a(Ljava/lang/String;[B[B)[B

    move-result-object v0

    .line 716
    .local v0, "content":[B
    new-instance v4, Lxx$a;

    invoke-direct {v4, p0}, Lxx$a;-><init>(Lxx;)V

    .line 717
    .local v4, "request":Lxx$a;
    iget-object v7, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    iput-object v7, v4, Lxx$a;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 718
    iput-object v1, v4, Lxx$a;->b:[B

    .line 719
    iget-object v7, p0, Lxx;->a:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v7, p0, Lxx;->f:Ljava/lang/String;

    invoke-static {p4, v7}, Lxu;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 722
    invoke-static {p4}, Lxu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 723
    const/4 v7, 0x0

    iput-object v7, v4, Lxx$a;->b:[B

    .line 726
    :cond_1
    const-string/jumbo v7, "UserManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n post="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    if-eqz p5, :cond_2

    .line 729
    const-string/jumbo v7, "UserManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "encrypt | content size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {v0}, Lcom/iflytek/yd/util/ZipUtils;->gZip([B)[B

    move-result-object v0

    .line 731
    const-string/jumbo v7, "UserManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "gZip | content size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_2
    iget-object v7, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v7, v6, v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->post(Ljava/lang/String;[B)V

    .line 734
    return-wide v2

    .line 706
    nop

    :array_0
    .array-data 1
        0x78t
        0x25t
        0x37t
        0x33t
        0x67t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private a(Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "cmd"    # Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;
    .param p2, "params"    # Lym;
    .param p3, "ap"    # Ljava/lang/String;
    .param p4, "sid"    # Ljava/lang/String;

    .prologue
    .line 890
    const/4 v7, 0x0

    .line 893
    .local v7, "sRequst":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v1}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 895
    .local v1, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v8, "request"

    invoke-virtual {v1, v8}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v6

    .line 897
    .local v6, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "cmd"

    invoke-virtual {v6, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 898
    const-string/jumbo v8, "base"

    invoke-virtual {v6, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    .line 899
    .local v0, "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "param"

    invoke-virtual {v6, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    .line 902
    .local v5, "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "aid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 903
    const-string/jumbo v8, "imsi"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 904
    const-string/jumbo v8, "imei"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 905
    const-string/jumbo v8, "caller"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getCaller()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 906
    const-string/jumbo v8, "osid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 907
    const-string/jumbo v8, "ua"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 908
    const-string/jumbo v8, "version"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 909
    const-string/jumbo v8, "cpu"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-static {}, Lazg;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 910
    const-string/jumbo v8, "androidid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v9

    invoke-virtual {v9}, Lhy;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 911
    const-string/jumbo v8, "mac"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 912
    const-string/jumbo v8, "cellid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v9

    invoke-virtual {v9}, Lhy;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 913
    const-string/jumbo v8, "uuid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->e:Lcom/iflytek/yd/http/interfaces/HttpContext;

    .line 914
    invoke-interface {v9}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 913
    invoke-static {v9}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v9

    .line 914
    invoke-virtual {v9}, Lhl;->i()Ljava/lang/String;

    move-result-object v9

    .line 913
    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 916
    if-eqz p4, :cond_0

    const-string/jumbo v8, ""

    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 917
    :cond_0
    const-string/jumbo v8, "sid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getSid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 921
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 922
    :cond_1
    const-string/jumbo v8, "ap"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 927
    :goto_1
    const-string/jumbo v8, "uid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 929
    const-string/jumbo v8, "df"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 932
    if-eqz p2, :cond_4

    .line 933
    invoke-virtual {p2}, Lym;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 934
    .local v4, "lstParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lym$a;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 935
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lym$a;

    iget-object v8, v8, Lym$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lym$a;

    iget-object v8, v8, Lym$a;->b:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 934
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 919
    .end local v3    # "i":I
    .end local v4    # "lstParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lym$a;>;"
    :cond_2
    const-string/jumbo v8, "sid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {v8, p4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 939
    .end local v0    # "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v1    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v5    # "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v6    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :catch_0
    move-exception v2

    .line 940
    .local v2, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 942
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v8

    .line 924
    .restart local v0    # "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v1    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .restart local v5    # "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v6    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_3
    const-string/jumbo v8, "ap"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 938
    :cond_4
    invoke-static {v1}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v8, v7

    .line 942
    goto :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "cmd"    # Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;
    .param p4, "params"    # Lym;
    .param p5, "ap"    # Ljava/lang/String;
    .param p6, "sid"    # Ljava/lang/String;
    .param p7, "appkey"    # Ljava/lang/String;
    .param p8, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 855
    const/4 v15, 0x0

    .line 858
    .local v15, "sRequst":Ljava/lang/String;
    :try_start_0
    new-instance v9, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v9}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 860
    .local v9, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v1, "request"

    invoke-virtual {v9, v1}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v14

    .line 862
    .local v14, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "cmd"

    invoke-virtual {v14, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 863
    const-string/jumbo v1, "base"

    invoke-virtual {v14, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    .line 864
    .local v2, "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "param"

    invoke-virtual {v14, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v13

    .local v13, "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 866
    invoke-direct/range {v1 .. v8}, Lxx;->a(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 869
    const-string/jumbo v1, "appkey"

    invoke-virtual {v2, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 871
    :cond_0
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 872
    const-string/jumbo v1, "pkgname"

    invoke-virtual {v2, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 875
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lym;->a()Ljava/util/ArrayList;

    move-result-object v12

    .line 876
    .local v12, "lstParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lym$a;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 877
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lym$a;

    iget-object v1, v1, Lym$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lym$a;

    iget-object v1, v1, Lym$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 876
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 879
    :cond_2
    invoke-static {v9}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v15

    .line 880
    const-string/jumbo v1, "UserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packAuthRequest doc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v15

    .line 884
    .end local v2    # "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v9    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v11    # "i":I
    .end local v12    # "lstParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lym$a;>;"
    .end local v13    # "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v14    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :goto_1
    return-object v1

    .line 881
    :catch_0
    move-exception v10

    .line 882
    .local v10, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "cmd"    # Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;
    .param p4, "params"    # Lym;
    .param p5, "ap"    # Ljava/lang/String;
    .param p6, "sid"    # Ljava/lang/String;
    .param p7, "appkey"    # Ljava/lang/String;
    .param p8, "pkgname"    # Ljava/lang/String;
    .param p9, "mode"    # I

    .prologue
    .line 779
    const/4 v15, 0x0

    .line 782
    .local v15, "sRequst":Ljava/lang/String;
    :try_start_0
    new-instance v9, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v9}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 784
    .local v9, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v1, "request"

    invoke-virtual {v9, v1}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v14

    .line 786
    .local v14, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "base"

    invoke-virtual {v14, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    .line 787
    .local v2, "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "cmd"

    invoke-virtual {v14, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 788
    const-string/jumbo v1, "param"

    invoke-virtual {v14, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v13

    .local v13, "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 790
    invoke-direct/range {v1 .. v8}, Lxx;->a(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string/jumbo v1, "mode"

    invoke-virtual {v2, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 794
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 795
    const-string/jumbo v1, "appkey"

    invoke-virtual {v2, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 797
    :cond_0
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 798
    const-string/jumbo v1, "pkgname"

    invoke-virtual {v2, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 801
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lym;->a()Ljava/util/ArrayList;

    move-result-object v12

    .line 802
    .local v12, "lstParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lym$a;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 803
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lym$a;

    iget-object v1, v1, Lym$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lym$a;

    iget-object v1, v1, Lym$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 802
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 805
    :cond_2
    invoke-static {v9}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v15

    .line 807
    const-string/jumbo v1, "UserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packAuthenticationRequest doc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v15

    .line 811
    .end local v2    # "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v9    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v11    # "i":I
    .end local v12    # "lstParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lym$a;>;"
    .end local v13    # "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v14    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :goto_1
    return-object v1

    .line 808
    :catch_0
    move-exception v10

    .line 809
    .local v10, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private a([B[B)Ljava/lang/String;
    .locals 4
    .param p1, "content"    # [B
    .param p2, "key"    # [B

    .prologue
    .line 661
    if-nez p2, :cond_1

    .line 662
    const-string/jumbo v2, ""

    .line 663
    .local v2, "res":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 664
    new-instance v2, Ljava/lang/String;

    .end local v2    # "res":Ljava/lang/String;
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 673
    :cond_0
    :goto_0
    return-object v2

    .line 669
    :cond_1
    invoke-static {p1, p2}, Lcom/iflytek/yd/util/security/DESEncrypter;->desDecrypt([B[B)[B

    move-result-object v0

    .line 671
    .local v0, "byDecrypt":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v1

    .line 673
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private a(IJI)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "id"    # J
    .param p4, "type"    # I

    .prologue
    .line 613
    iget-object v0, p0, Lxx;->c:Lyn;

    if-eqz v0, :cond_0

    .line 614
    iget-object v1, p0, Lxx;->c:Lyn;

    const/4 v3, 0x0

    move v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lyn;->onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V

    .line 616
    :cond_0
    return-void
.end method

.method private a(Lcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 8
    .param p1, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p2, "id"    # J
    .param p4, "type"    # I

    .prologue
    .line 619
    iget-object v0, p0, Lxx;->c:Lyn;

    if-eqz v0, :cond_0

    .line 620
    iget-object v1, p0, Lxx;->c:Lyn;

    const/4 v2, 0x0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lyn;->onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V

    .line 622
    :cond_0
    return-void
.end method

.method private a(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "baseNode"    # Lcom/iflytek/yd/util/xml/XmlElement;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "ap"    # Ljava/lang/String;
    .param p5, "sid"    # Ljava/lang/String;
    .param p6, "appkey"    # Ljava/lang/String;
    .param p7, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 817
    const-string/jumbo v0, "aid"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 818
    if-eqz p3, :cond_2

    .line 819
    const-string/jumbo v0, "imsi"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 823
    :goto_0
    const-string/jumbo v0, "imei"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    iget-object v1, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 824
    const-string/jumbo v0, "caller"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    iget-object v1, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 825
    const-string/jumbo v0, "osid"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    iget-object v1, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 826
    const-string/jumbo v0, "ua"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    iget-object v1, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 827
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    iget-object v1, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 828
    const-string/jumbo v0, "cpu"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-static {}, Lazg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 829
    const-string/jumbo v0, "androidid"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v1

    invoke-virtual {v1}, Lhy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 830
    const-string/jumbo v0, "mac"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 831
    const-string/jumbo v0, "cellid"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v1

    invoke-virtual {v1}, Lhy;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 832
    const-string/jumbo v0, "uuid"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    iget-object v1, p0, Lxx;->e:Lcom/iflytek/yd/http/interfaces/HttpContext;

    .line 833
    invoke-interface {v1}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 832
    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    .line 833
    invoke-virtual {v1}, Lhl;->i()Ljava/lang/String;

    move-result-object v1

    .line 832
    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 835
    if-eqz p5, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 836
    :cond_0
    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    iget-object v1, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 840
    :goto_1
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 841
    :cond_1
    const-string/jumbo v0, "ap"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    iget-object v1, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 845
    :goto_2
    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    iget-object v1, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 847
    const-string/jumbo v0, "df"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    iget-object v1, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 850
    return-void

    .line 821
    :cond_2
    const-string/jumbo v0, "imsi"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    iget-object v1, p0, Lxx;->d:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 838
    :cond_3
    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 843
    :cond_4
    const-string/jumbo v0, "ap"

    invoke-virtual {p1, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static a(Lorg/apache/http/util/ByteArrayBuffer;[BLjava/lang/String;)V
    .locals 5
    .param p0, "bf"    # Lorg/apache/http/util/ByteArrayBuffer;
    .param p1, "byRecord"    # [B
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v1, "sBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v3, "=====iflytek_ossp2.0_blc1.0_nextpart====="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string/jumbo v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string/jumbo v3, "Content-Type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string/jumbo v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string/jumbo v3, "Content-Length:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    const-string/jumbo v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string/jumbo v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lxx;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 326
    .local v2, "up":[B
    const-string/jumbo v3, "\r\n"

    invoke-static {v3}, Lxx;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 328
    .local v0, "end":[B
    array-length v3, v2

    invoke-virtual {p0, v2, v4, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 329
    array-length v3, p1

    invoke-virtual {p0, p1, v4, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 330
    array-length v3, v0

    invoke-virtual {p0, v0, v4, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 331
    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 280
    if-nez p0, :cond_0

    .line 281
    const/4 v1, 0x0

    .line 286
    :goto_0
    return-object v1

    .line 284
    :cond_0
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[BI)[B
    .locals 7
    .param p1, "xml"    # Ljava/lang/String;
    .param p2, "multis"    # [B
    .param p3, "type"    # I

    .prologue
    .line 291
    invoke-static {p1}, Lxx;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 292
    .local v4, "xmlbytes":[B
    array-length v5, v4

    array-length v6, p2

    add-int v1, v5, v6

    .line 293
    .local v1, "cap":I
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 294
    .local v0, "bf":Lorg/apache/http/util/ByteArrayBuffer;
    const-string/jumbo v5, "text/xml"

    invoke-static {v0, v4, v5}, Lxx;->a(Lorg/apache/http/util/ByteArrayBuffer;[BLjava/lang/String;)V

    .line 295
    const-string/jumbo v5, "application/json"

    invoke-static {v0, p2, v5}, Lxx;->a(Lorg/apache/http/util/ByteArrayBuffer;[BLjava/lang/String;)V

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v3, "sBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "=====iflytek_ossp2.0_blc1.0_nextpart====="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string/jumbo v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lxx;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 301
    .local v2, "end":[B
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v0, v2, v5, v6}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 302
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private a(Ljava/lang/String;[B[B)[B
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "addOnes"    # [B

    .prologue
    const/4 v8, 0x0

    .line 628
    :try_start_0
    const-string/jumbo v6, "utf-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 633
    .local v1, "content":[B
    :goto_0
    const/4 v4, 0x0

    .line 634
    .local v4, "prefix":[B
    if-eqz p3, :cond_0

    array-length v6, p3

    if-eqz v6, :cond_0

    .line 635
    const-string/jumbo v5, "00000000"

    .line 638
    .local v5, "sPrefixLen":Ljava/lang/String;
    array-length v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, "len":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x8

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 641
    :try_start_1
    const-string/jumbo v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 647
    .end local v3    # "len":Ljava/lang/String;
    .end local v5    # "sPrefixLen":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .line 648
    .local v0, "bySend":[B
    if-eqz p3, :cond_1

    array-length v6, p3

    if-nez v6, :cond_2

    .line 649
    :cond_1
    move-object v0, v1

    .line 656
    :goto_2
    invoke-static {v0, p2}, Lcom/iflytek/yd/util/security/DESEncrypter;->desEncrypt([B[B)[B

    move-result-object v6

    return-object v6

    .line 629
    .end local v0    # "bySend":[B
    .end local v1    # "content":[B
    .end local v4    # "prefix":[B
    :catch_0
    move-exception v2

    .line 630
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1    # "content":[B
    goto :goto_0

    .line 642
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "len":Ljava/lang/String;
    .restart local v4    # "prefix":[B
    .restart local v5    # "sPrefixLen":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 643
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_1

    .line 651
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "len":Ljava/lang/String;
    .end local v5    # "sPrefixLen":Ljava/lang/String;
    .restart local v0    # "bySend":[B
    :cond_2
    array-length v6, v4

    array-length v7, v1

    add-int/2addr v6, v7

    array-length v7, p3

    add-int/2addr v6, v7

    new-array v0, v6, [B

    .line 652
    array-length v6, v4

    invoke-static {v4, v8, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    array-length v6, v4

    array-length v7, v1

    invoke-static {v1, v8, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    array-length v6, v4

    array-length v7, v1

    add-int/2addr v6, v7

    array-length v7, p3

    invoke-static {p3, v8, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method


# virtual methods
.method public a(I)J
    .locals 6
    .param p1, "isAuto"    # I

    .prologue
    const/4 v5, 0x0

    .line 183
    new-instance v0, Lym;

    invoke-direct {v0}, Lym;-><init>()V

    .line 184
    .local v0, "params":Lym;
    const-string/jumbo v2, "isauto"

    invoke-virtual {v0, v2, p1}, Lym;->a(Ljava/lang/String;I)V

    .line 185
    const-string/jumbo v2, "apilevel"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2, v3}, Lym;->a(Ljava/lang/String;I)V

    .line 186
    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->version:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v0, v3, v4}, Lxx;->a(Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "sRequest":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-direct {p0, v2, v1, v5, v5}, Lxx;->a(ILjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public a(II[Ljava/lang/String;)J
    .locals 9
    .param p1, "type"    # I
    .param p2, "moreId"    # I
    .param p3, "clientIds"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 530
    const/4 v3, 0x0

    .line 531
    .local v3, "requestType":I
    sparse-switch p1, :sswitch_data_0

    .line 557
    :goto_0
    new-instance v2, Lym;

    invoke-direct {v2}, Lym;-><init>()V

    .line 558
    .local v2, "params":Lym;
    const-string/jumbo v5, "restype"

    invoke-virtual {v2, v5, p1}, Lym;->a(Ljava/lang/String;I)V

    .line 559
    const-string/jumbo v5, "moreid"

    invoke-virtual {v2, v5, p2}, Lym;->a(Ljava/lang/String;I)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_2

    array-length v5, p3

    if-lez v5, :cond_2

    .line 563
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p3

    if-ge v1, v5, :cond_3

    .line 564
    aget-object v5, p3, v1

    if-nez v5, :cond_1

    .line 563
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 533
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "params":Lym;
    :sswitch_0
    const/16 v3, 0x12

    .line 534
    goto :goto_0

    .line 536
    :sswitch_1
    const/16 v3, 0x17

    .line 537
    goto :goto_0

    .line 539
    :sswitch_2
    const/16 v3, 0x1e

    .line 540
    goto :goto_0

    .line 542
    :sswitch_3
    const/16 v3, 0x20

    .line 543
    goto :goto_0

    .line 545
    :sswitch_4
    const/16 v3, 0x22

    .line 546
    goto :goto_0

    .line 548
    :sswitch_5
    const/16 v3, 0x29

    .line 549
    goto :goto_0

    .line 551
    :sswitch_6
    const/16 v3, 0x2a

    .line 552
    goto :goto_0

    .line 567
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "i":I
    .restart local v2    # "params":Lym;
    :cond_1
    aget-object v5, p3, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    array-length v5, p3

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_0

    .line 569
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 573
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_3
    const-string/jumbo v5, "clientid"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    sget-object v5, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->downres:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-direct {p0, v5, v2, v6, v7}, Lxx;->a(Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "sRequest":Ljava/lang/String;
    invoke-direct {p0, v3, v4, v8, v8}, Lxx;->a(ILjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v6

    return-wide v6

    .line 531
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_0
        0xb -> :sswitch_2
        0xc -> :sswitch_4
        0xf -> :sswitch_3
        0x12 -> :sswitch_5
        0x15 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "type"    # I
    .param p2, "sInfo"    # Ljava/lang/String;
    .param p3, "sContact"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 335
    new-instance v0, Lym;

    invoke-direct {v0}, Lym;-><init>()V

    .line 337
    .local v0, "params":Lym;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Lym;->a(Ljava/lang/String;I)V

    .line 338
    const-string/jumbo v2, "info"

    invoke-virtual {v0, v2, p2}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v2, "contact"

    invoke-virtual {v0, v2, p3}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->feedback:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v0, v3, v4}, Lxx;->a(Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "sRequest":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-direct {p0, v2, v1, v5, v5}, Lxx;->a(ILjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 16
    .param p1, "type"    # I
    .param p2, "sInfo"    # Ljava/lang/String;
    .param p3, "sContact"    # Ljava/lang/String;
    .param p4, "fileRecord"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v7, Lym;

    invoke-direct {v7}, Lym;-><init>()V

    .line 359
    .local v7, "params":Lym;
    const-string/jumbo v11, "type"

    move/from16 v0, p1

    invoke-virtual {v7, v11, v0}, Lym;->a(Ljava/lang/String;I)V

    .line 360
    const-string/jumbo v11, "info"

    move-object/from16 v0, p2

    invoke-virtual {v7, v11, v0}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v11, "contact"

    move-object/from16 v0, p3

    invoke-virtual {v7, v11, v0}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v11, "mode"

    const-string/jumbo v12, "1"

    invoke-virtual {v7, v11, v12}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v11, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->feedback:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v12, ""

    const-string/jumbo v13, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v12, v13}, Lxx;->a(Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 366
    .local v10, "sRequest":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 367
    .local v8, "requestId":J
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 369
    const v11, 0xc3c14

    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9, v12}, Lxx;->a(IJI)V

    .line 399
    .end local v8    # "requestId":J
    :cond_0
    :goto_0
    return-wide v8

    .line 372
    .restart local v8    # "requestId":J
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_2

    .line 373
    const v11, 0xc3c15

    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9, v12}, Lxx;->a(IJI)V

    goto :goto_0

    .line 376
    :cond_2
    const/4 v2, 0x0

    .line 377
    .local v2, "byRecord":[B
    const/4 v5, 0x0

    .line 379
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v6, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v11, v12

    new-array v2, v11, [B

    .line 381
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 382
    const-string/jumbo v11, "UserManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "feedBackRecord filelen : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    if-eqz v6, :cond_3

    .line 392
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 399
    :cond_3
    :goto_1
    const/4 v11, 0x5

    sget-object v12, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->feedback:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 400
    invoke-virtual {v12}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->toString()Ljava/lang/String;

    move-result-object v12

    .line 399
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v2, v12}, Lxx;->a(ILjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    .line 393
    :catch_0
    move-exception v3

    .line 394
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "UserManager"

    const-string/jumbo v12, "error happened"

    invoke-static {v11, v12, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 383
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 384
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    const v11, 0xc3c14

    const/4 v12, 0x5

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9, v12}, Lxx;->a(IJI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    if-eqz v5, :cond_0

    .line 392
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 393
    :catch_2
    move-exception v3

    .line 394
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "UserManager"

    const-string/jumbo v12, "error happened"

    invoke-static {v11, v12, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 386
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 387
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    const v11, 0xc3c16

    const/4 v12, 0x5

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9, v12}, Lxx;->a(IJI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 390
    if-eqz v5, :cond_0

    .line 392
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 393
    :catch_4
    move-exception v3

    .line 394
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "UserManager"

    const-string/jumbo v12, "error happened"

    invoke-static {v11, v12, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 390
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v5, :cond_4

    .line 392
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 395
    :cond_4
    :goto_5
    throw v11

    .line 393
    :catch_5
    move-exception v3

    .line 394
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v12, "UserManager"

    const-string/jumbo v13, "error happened"

    invoke-static {v12, v13, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 390
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 386
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 383
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "childType"    # Ljava/lang/String;

    .prologue
    .line 1018
    new-instance v0, Lym;

    invoke-direct {v0}, Lym;-><init>()V

    .line 1019
    .local v0, "params":Lym;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1020
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1023
    const-string/jumbo v2, "childtype"

    invoke-virtual {v0, v2, p2}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_1
    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getconfig:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v0, v3, v4}, Lxx;->a(Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1026
    .local v1, "sRequest":Ljava/lang/String;
    const/16 v2, 0x23

    invoke-direct {p0, v2, v1}, Lxx;->a(ILjava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p1, "tokenRandomCode"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v4, Lym;

    invoke-direct {v4}, Lym;-><init>()V

    .line 173
    .local v4, "params":Lym;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const-string/jumbo v0, "rdmcode"

    invoke-virtual {v4, v0, p1}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    sget-object v3, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->gettokenid:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lxx;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, "sRequest":Ljava/lang/String;
    const/16 v0, 0x24

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v9, v1, v2}, Lxx;->a(ILjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 11
    .param p1, "tokenRandomCode"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "mode"    # I

    .prologue
    .line 162
    new-instance v4, Lym;

    invoke-direct {v4}, Lym;-><init>()V

    .line 163
    .local v4, "params":Lym;
    const-string/jumbo v0, "rdmcode"

    invoke-virtual {v4, v0, p1}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v3, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->querytokenid:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lxx;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "sRequest":Ljava/lang/String;
    const/16 v0, 0x1b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v10, v1, v2}, Lxx;->a(ILjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/util/ArrayList;)J
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 209
    const-wide/16 v14, -0x1

    .line 276
    :cond_0
    :goto_0
    return-wide v14

    .line 212
    :cond_1
    const/16 v17, 0x0

    .line 214
    .local v17, "param":Ljava/lang/String;
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 215
    .local v13, "jsonObject":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 216
    .local v7, "array":Lorg/json/JSONArray;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    .local v20, "string":Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 219
    :try_start_1
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    .local v21, "temp":Lorg/json/JSONObject;
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 221
    .end local v21    # "temp":Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .line 222
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v25, "UserManager"

    const-string/jumbo v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 228
    .end local v7    # "array":Lorg/json/JSONArray;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .end local v20    # "string":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 229
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v24, "UserManager"

    const-string/jumbo v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static/range {v17 .. v17}, Lxx;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 233
    .local v6, "addOnes":[B
    if-nez v6, :cond_4

    .line 234
    const-wide/16 v14, -0x1

    goto :goto_0

    .line 226
    .end local v6    # "addOnes":[B
    .restart local v7    # "array":Lorg/json/JSONArray;
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :try_start_3
    const-string/jumbo v24, "clientinterlog"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v17

    goto :goto_2

    .line 237
    .end local v7    # "array":Lorg/json/JSONArray;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "addOnes":[B
    :cond_4
    sget-object v24, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->upmd:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lxx;->a(Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 238
    .local v8, "baseData":Ljava/lang/String;
    const/16 v24, 0x4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lxx;->e:Lcom/iflytek/yd/http/interfaces/HttpContext;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/iflytek/yd/http/factory/HttpRequestFactory;->newSimpleRequestInstance(ILcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v18

    .line 239
    .local v18, "request":Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->setOnHttpRequestListener(Lcom/iflytek/yd/http/listener/OnHttpRequestListener;)V

    .line 240
    invoke-interface/range {v18 .. v18}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v14

    .line 243
    .local v14, "id":J
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string/jumbo v25, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v25, Ljava/util/Date;

    invoke-direct/range {v25 .. v25}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    .line 246
    .local v22, "time":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    .local v9, "bf":Ljava/lang/StringBuffer;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lxx;->f:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "?c="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    const-string/jumbo v24, "9003"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const-string/jumbo v24, "&v="

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    const-string/jumbo v24, "2.0"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    const-string/jumbo v24, "&t="

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 255
    .local v23, "url":Ljava/lang/String;
    new-instance v19, Lxx$a;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lxx$a;-><init>(Lxx;)V

    .line 256
    .local v19, "requestEntity":Lxx$a;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lxx$a;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lxx;->a:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lxx;->g:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->setSubSection(Z)V

    .line 261
    const/16 v24, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v8, v6, v1}, Lxx;->a(Ljava/lang/String;[BI)[B

    move-result-object v11

    .line 263
    .local v11, "content":[B
    invoke-static {v11}, Lcom/iflytek/yd/util/ZipUtils;->gZip([B)[B

    move-result-object v11

    .line 264
    if-eqz v11, :cond_5

    .line 266
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v11

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 267
    .local v16, "m":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lxx;->a(Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lxx$a;->b:[B

    .line 268
    invoke-static/range {v16 .. v16}, Lxx;->a(Ljava/lang/String;)[B

    move-result-object v10

    .line 270
    .local v10, "bytes":[B
    invoke-static {v11, v10}, Lwb;->a([B[B)[B

    move-result-object v11

    .line 273
    .end local v10    # "bytes":[B
    .end local v16    # "m":Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_0

    .line 274
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v11}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->post(Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 597
    iget-object v0, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lxx;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v1}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v0, p0, Lxx;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->cancel()V

    .line 601
    :cond_0
    return-void
.end method

.method public b()J
    .locals 5

    .prologue
    .line 1034
    new-instance v0, Lym;

    invoke-direct {v0}, Lym;-><init>()V

    .line 1035
    .local v0, "params":Lym;
    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->anonlogin:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v0, v3, v4}, Lxx;->a(Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;Lym;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    .local v1, "sRequest":Ljava/lang/String;
    const/16 v2, 0x64

    invoke-direct {p0, v2, v1}, Lxx;->a(ILjava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public onError(ILjava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorDetail"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 980
    iget-object v0, p0, Lxx;->a:Ljava/util/HashMap;

    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    iget-object v0, p0, Lxx;->g:Ljava/util/Map;

    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string/jumbo v0, "UserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v0

    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lxx;->a(IJI)V

    .line 984
    return-void
.end method

.method public onRequestEnd(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 1043
    return-void
.end method

.method public onResponseStart(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 1048
    return-void
.end method

.method public onResult([BLcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 10
    .param p1, "result"    # [B
    .param p2, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 947
    iget-object v5, p0, Lxx;->a:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxx$a;

    .line 948
    .local v4, "userRequest":Lxx$a;
    if-eqz v4, :cond_1

    .line 949
    iget-object v5, p0, Lxx;->a:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 951
    :cond_0
    const v5, 0xc3ba7

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v6

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v8

    invoke-direct {p0, v5, v6, v7, v8}, Lxx;->a(IJI)V

    .line 976
    :cond_1
    :goto_0
    return-void

    .line 953
    :cond_2
    const/4 v2, 0x0

    .line 954
    .local v2, "realResult":Ljava/lang/String;
    iget-object v5, p0, Lxx;->g:Ljava/util/Map;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 956
    .local v3, "time":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 957
    const-string/jumbo v5, "UserManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResult, xor\'s time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 960
    .local v1, "m":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {p1, v5}, Lwb;->a([B[B)[B

    move-result-object v5

    invoke-static {v5}, Lwb;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 965
    :goto_1
    if-eqz p1, :cond_3

    new-instance v2, Ljava/lang/String;

    .end local v2    # "realResult":Ljava/lang/String;
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 966
    .restart local v2    # "realResult":Ljava/lang/String;
    :goto_2
    const-string/jumbo v5, "UserManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " onResult : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v5, p0, Lxx;->g:Ljava/util/Map;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    .end local v1    # "m":Ljava/lang/String;
    :goto_3
    const-string/jumbo v5, "UserManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResult:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", rquestId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->saveAuthLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v5

    invoke-static {v5, v2}, Lxw;->a(ILjava/lang/String;)Lcom/iflytek/yd/business/OperationInfo;

    move-result-object v5

    .line 973
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v6

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v8

    .line 972
    invoke-direct {p0, v5, v6, v7, v8}, Lxx;->a(Lcom/iflytek/yd/business/OperationInfo;JI)V

    goto/16 :goto_0

    .line 961
    .restart local v1    # "m":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 963
    const-string/jumbo v5, "UserManager"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 965
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 969
    .end local v1    # "m":Ljava/lang/String;
    :cond_4
    iget-object v5, v4, Lxx$a;->b:[B

    invoke-direct {p0, p1, v5}, Lxx;->a([B[B)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method
