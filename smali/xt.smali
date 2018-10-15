.class public abstract Lxt;
.super Ljava/lang/Object;
.source "IFlyBaseLog.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/text/SimpleDateFormat;

.field protected d:Lhl;

.field protected e:Landroid/content/Context;

.field protected f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lxt;->b:Ljava/text/SimpleDateFormat;

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lxt;->f:I

    .line 66
    iput-object p1, p0, Lxt;->e:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    iput-object v0, p0, Lxt;->d:Lhl;

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lxt;->a:Ljava/util/Map;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 114
    iget-object v0, p0, Lxt;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "com.iflytek.cmcc"

    return-object v0
.end method

.method public b(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 157
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 158
    iput p1, p0, Lxt;->f:I

    .line 160
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 128
    const-string/jumbo v0, "type"

    invoke-virtual {p0}, Lxt;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lxt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string/jumbo v0, "usedapp"

    invoke-virtual {p0}, Lxt;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lxt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string/jumbo v0, "apcode"

    invoke-virtual {p0}, Lxt;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lxt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string/jumbo v0, "version"

    invoke-virtual {p0}, Lxt;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lxt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string/jumbo v0, "df"

    invoke-virtual {p0}, Lxt;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lxt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public final d(J)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 100
    const-string/jumbo v1, ""

    .line 102
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lxt;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 103
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lxt;->d:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lxt;->d:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lxt;->d:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lxt;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 142
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lxt;->a:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 144
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 149
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
