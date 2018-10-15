.class public Lny$b;
.super Ljava/lang/Object;
.source "BaiduLocateManager.java"

# interfaces
.implements Ldc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lny;


# direct methods
.method public constructor <init>(Lny;)V
    .locals 0
    .param p1, "this$0"    # Lny;

    .prologue
    .line 178
    iput-object p1, p0, Lny$b;->a:Lny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/location/BDLocation;)V
    .locals 14
    .param p1, "location"    # Lcom/baidu/location/BDLocation;

    .prologue
    const-wide/16 v12, 0x0

    .line 181
    const-string/jumbo v10, "LBS_MapBaiduLocateManager"

    const-string/jumbo v11, "------------>>> onReceiveLocation()"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v10, p0, Lny$b;->a:Lny;

    invoke-static {v10}, Lny;->a(Lny;)I

    .line 184
    iget-object v10, p0, Lny$b;->a:Lny;

    invoke-static {v10}, Lny;->b(Lny;)I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_1

    .line 185
    iget-object v10, p0, Lny$b;->a:Lny;

    invoke-virtual {v10}, Lny;->b()V

    .line 186
    iget-object v10, p0, Lny$b;->a:Lny;

    sget-object v11, Lcom/iflytek/common/lbs/XAddress;->ERROR_ADDRESS_BEYOND_TIME_LIMIT:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {v10, v11}, Lny;->a(Ljava/lang/Object;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v10, p0, Lny$b;->a:Lny;

    invoke-static {v10}, Lny;->c(Lny;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v10

    invoke-virtual {v10}, Lhl;->c()Z

    move-result v10

    if-nez v10, :cond_2

    .line 193
    iget-object v10, p0, Lny$b;->a:Lny;

    invoke-virtual {v10}, Lny;->b()V

    .line 194
    iget-object v10, p0, Lny$b;->a:Lny;

    sget-object v11, Lcom/iflytek/common/lbs/XAddress;->ERROR_ADDRESS_NO_NETWORK:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {v10, v11}, Lny;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_2
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->f()I

    move-result v10

    const/16 v11, 0x3e

    if-eq v10, v11, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->f()I

    move-result v10

    const/16 v11, 0x3f

    if-eq v10, v11, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->f()I

    move-result v10

    const/16 v11, 0xa7

    if-eq v10, v11, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->f()I

    move-result v10

    if-eqz v10, :cond_0

    .line 209
    new-instance v0, Lcom/iflytek/common/lbs/XAddress;

    invoke-direct {v0}, Lcom/iflytek/common/lbs/XAddress;-><init>()V

    .line 211
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v4

    .line 212
    .local v4, "latitude":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/iflytek/common/lbs/XAddress;->setLatitude(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v6

    .line 215
    .local v6, "longitude":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/iflytek/common/lbs/XAddress;->setLongtitude(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->j()Ljava/lang/String;

    move-result-object v8

    .line 218
    .local v8, "province":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lcom/iflytek/common/lbs/XAddress;->setProvince(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->k()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "city":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/iflytek/common/lbs/XAddress;->setCity(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->l()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "district":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/iflytek/common/lbs/XAddress;->setArea(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->m()Ljava/lang/String;

    move-result-object v9

    .line 227
    .local v9, "street":Ljava/lang/String;
    invoke-virtual {v0, v9}, Lcom/iflytek/common/lbs/XAddress;->setStreet(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->i()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "addressName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setAddressName(Ljava/lang/String;)V

    .line 233
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/iflytek/common/lbs/XAddress;->setLocationFrom(I)V

    .line 235
    cmpl-double v10, v12, v4

    if-eqz v10, :cond_0

    cmpl-double v10, v12, v6

    if-eqz v10, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v10, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 236
    iget-object v10, p0, Lny$b;->a:Lny;

    invoke-virtual {v10, v0}, Lny;->a(Ljava/lang/Object;)V

    .line 237
    iget-object v10, p0, Lny$b;->a:Lny;

    invoke-virtual {v10}, Lny;->b()V

    goto/16 :goto_0
.end method
