.class Ldk$a;
.super Ldr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ldk;

.field private k:Z


# direct methods
.method public constructor <init>(Ldk;)V
    .locals 1

    iput-object p1, p0, Ldk$a;->a:Ldk;

    invoke-direct {p0}, Ldr;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldk$a;->k:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Ldk$a;->a:Ldk;

    invoke-static {v0}, Ldk;->a(Ldk;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dns.map.baidu.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ldk$a;->a:Ldk;

    invoke-static {v2}, Ldk;->b(Ldk;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v0

    invoke-virtual {v0}, Lfy;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldk$a;->a:Ldk;

    const-string/jumbo v1, "dns.map.baidu.com"

    invoke-static {v0, v1}, Ldk;->a(Ldk;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldk$a;->a:Ldk;

    invoke-static {v1}, Ldk;->a(Ldk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":80/remotedns?pid=lbs-geolocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldk$a;->c:Ljava/lang/String;

    return-void

    :pswitch_0
    iget-object v0, p0, Ldk$a;->a:Ldk;

    const-string/jumbo v1, "111.13.100.247"

    invoke-static {v0, v1}, Ldk;->a(Ldk;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ldk$a;->a:Ldk;

    const-string/jumbo v1, "180.97.33.196"

    invoke-static {v0, v1}, Ldk;->a(Ldk;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Ldk$a;->a:Ldk;

    const-string/jumbo v1, "111.206.37.190"

    invoke-static {v0, v1}, Ldk;->a(Ldk;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Ldk$a;->e:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Ldk$a;->e:Lorg/apache/http/HttpEntity;

    const-string/jumbo v2, "utf-8"

    invoke-static {v1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "errno"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v1, "loc.map.baidu.com"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "loc.map.baidu.com"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "ip"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v3, "dns.map.baidu.com"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "dns.map.baidu.com"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "ip"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Ldk$a;->a:Ldk;

    invoke-static {v3, v0}, Ldk;->a(Ldk;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Ldk$a;->a:Ldk;

    invoke-static {v0, v1}, Ldk;->b(Ldk;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "switch"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldk$a;->a:Ldk;

    const-string/jumbo v1, "switch"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ldk;->a(Ldk;I)I

    :cond_2
    iget-object v0, p0, Ldk$a;->a:Ldk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ldk;->a(Ldk;J)J

    invoke-virtual {p0}, Ldk$a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iput-boolean v5, p0, Ldk$a;->k:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method b()V
    .locals 1

    iget-boolean v0, p0, Ldk$a;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldk$a;->k:Z

    invoke-virtual {p0}, Ldk$a;->d()V

    goto :goto_0
.end method

.method c()V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Ldk$a;->a:Ldk;

    invoke-static {v0}, Ldk;->c(Ldk;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x124f80

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Ldk$a;->a:Ldk;

    invoke-static {v0}, Ldk;->d(Ldk;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "net.dns1"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :goto_1
    :try_start_1
    const-string/jumbo v0, "loc.map.baidu.com"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldk$a;->a:Ldk;

    invoke-static {v1, v2}, Ldk;->c(Ldk;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Ldk$a;->a:Ldk;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->d(Ldk;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Ldk$a;->a:Ldk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ldk;->b(Ldk;J)J

    iget-object v0, p0, Ldk$a;->a:Ldk;

    invoke-static {v0}, Ldk;->d(Ldk;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method
