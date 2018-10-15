.class Lfn$a;
.super Ldr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/baidu/location/BDLocation;

.field k:Z

.field final synthetic l:Lfn;


# direct methods
.method public constructor <init>(Lfn;Lcom/baidu/location/BDLocation;)V
    .locals 1

    iput-object p1, p0, Lfn$a;->l:Lfn;

    invoke-direct {p0}, Ldr;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfn$a;->k:Z

    iput-object p2, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, Lfn$a;->k:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://sapi.skyhookwireless.com/wps2/reverse-geo"

    iput-object v0, p0, Lfn$a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<ReverseGeoRQ xmlns=\"http://skyhookwireless.com/wps/2005\"\nversion=\"2.24\"\nstreet-address-lookup=\"full\">\n<authentication version=\"2.2\">\n<key key=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/Jni;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "username=\"BAIDULOC\"/></authentication>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<point>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<latitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "</latitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<longitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "</longitude>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "</point>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "</ReverseGeoRQ>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfn$a;->i:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v0, "country|country_code|province|city|city_code|street|street_number|district"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldp;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?&x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&r=100&prodname=searchbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfn$a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?&x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&r=100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfn$a;->c:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 10

    const/16 v7, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v0, p0, Lfn$a;->e:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lfn$a;->e:Lorg/apache/http/HttpEntity;

    const-string/jumbo v2, "utf-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lfn$a;->k:Z

    if-eqz v2, :cond_3

    new-instance v3, Lfm;

    invoke-direct {v3, v0}, Lfm;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lfm;->b:Ljava/lang/String;

    iget-object v1, v3, Lfm;->d:Ljava/lang/String;

    iget-object v0, v3, Lfm;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v1, v3, Lfm;->h:Ljava/lang/String;

    move-object v2, v1

    :goto_0
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, v3, Lfm;->i:Ljava/lang/String;

    move-object v1, v0

    :goto_1
    iget-object v0, v3, Lfm;->e:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, v3, Lfm;->j:Ljava/lang/String;

    :cond_0
    const-string/jumbo v5, "skyhook rgc metro2 = "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lfm;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Lfm;->f:Ljava/lang/String;

    iget-object v3, v3, Lfm;->g:Ljava/lang/String;

    new-instance v6, Lda$a;

    invoke-direct {v6}, Lda$a;-><init>()V

    invoke-virtual {v6, v4}, Lda$a;->a(Ljava/lang/String;)Lda$a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lda$a;->c(Ljava/lang/String;)Lda$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lda$a;->d(Ljava/lang/String;)Lda$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lda$a;->f(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lda$a;->g(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lda$a;->h(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0}, Lda$a;->a()Lda;

    move-result-object v0

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->a(Lda;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lfn$a;->l:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    invoke-virtual {v0}, Lfm;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfn$a;->l:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    invoke-virtual {v0}, Lfm;->d()D

    move-result-wide v0

    iget-object v2, p0, Lfn$a;->l:Lfn;

    iget-object v2, v2, Lfn;->c:Lfm;

    invoke-virtual {v2}, Lfm;->c()D

    move-result-wide v2

    const-string/jumbo v4, "gps2gcj"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/Jni;->a(DDLjava/lang/String;)[D

    move-result-object v0

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    const-string/jumbo v2, "gcj02"

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/location/BDLocation;->b(D)V

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/location/BDLocation;->a(D)V

    :cond_2
    invoke-static {}, Lfc;->b()Lfc;

    move-result-object v0

    iget-object v0, v0, Lfc;->h:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return-void

    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "addr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "addr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v0, "country"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "country"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object v8, v0

    :goto_4
    const-string/jumbo v0, "country_code"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "country_code"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object v7, v0

    :goto_5
    const-string/jumbo v0, "province"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "province"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object v6, v0

    :goto_6
    const-string/jumbo v0, "city"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "city"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object v5, v0

    :goto_7
    const-string/jumbo v0, "city_code"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "city_code"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object v4, v0

    :goto_8
    const-string/jumbo v0, "district"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "district"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object v3, v0

    :goto_9
    const-string/jumbo v0, "street"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "street"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, v0

    :goto_a
    const-string/jumbo v0, "streetNumber"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "street_number"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    :goto_b
    new-instance v1, Lda$a;

    invoke-direct {v1}, Lda$a;-><init>()V

    invoke-virtual {v1, v8}, Lda$a;->a(Ljava/lang/String;)Lda$a;

    move-result-object v1

    invoke-virtual {v1, v7}, Lda$a;->b(Ljava/lang/String;)Lda$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lda$a;->c(Ljava/lang/String;)Lda$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lda$a;->d(Ljava/lang/String;)Lda$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lda$a;->e(Ljava/lang/String;)Lda$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lda$a;->f(Ljava/lang/String;)Lda$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lda$a;->g(Ljava/lang/String;)Lda$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lda$a;->h(Ljava/lang/String;)Lda$a;

    move-result-object v0

    invoke-virtual {v0}, Lda$a;->a()Lda;

    move-result-object v0

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->a(Lda;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lfn$a;->l:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    invoke-virtual {v0}, Lfm;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfn$a;->l:Lfn;

    iget-object v0, v0, Lfn;->c:Lfm;

    invoke-virtual {v0}, Lfm;->d()D

    move-result-wide v0

    iget-object v2, p0, Lfn$a;->l:Lfn;

    iget-object v2, v2, Lfn;->c:Lfm;

    invoke-virtual {v2}, Lfm;->c()D

    move-result-wide v2

    const-string/jumbo v4, "gps2gcj"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/Jni;->a(DDLjava/lang/String;)[D

    move-result-object v0

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    const-string/jumbo v2, "gcj02"

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    aget-wide v2, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/baidu/location/BDLocation;->b(D)V

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    aget-wide v2, v0, v6

    invoke-virtual {v1, v2, v3}, Lcom/baidu/location/BDLocation;->a(D)V

    :cond_5
    invoke-static {}, Lfc;->b()Lfc;

    move-result-object v0

    iget-object v0, v0, Lfc;->h:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lfn$a;->a:Lcom/baidu/location/BDLocation;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_b

    :cond_7
    move-object v2, v1

    goto/16 :goto_a

    :cond_8
    move-object v3, v1

    goto/16 :goto_9

    :cond_9
    move-object v4, v1

    goto/16 :goto_8

    :cond_a
    move-object v5, v1

    goto/16 :goto_7

    :cond_b
    move-object v6, v1

    goto/16 :goto_6

    :cond_c
    move-object v7, v1

    goto/16 :goto_5

    :cond_d
    move-object v8, v1

    goto/16 :goto_4

    :cond_e
    move-object v1, v0

    goto/16 :goto_1

    :cond_f
    move-object v2, v1

    goto/16 :goto_0
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lfn$a;->k:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lfn$a;->g()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lfn$a;->d()V

    goto :goto_0
.end method
