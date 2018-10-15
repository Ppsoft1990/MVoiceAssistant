.class Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;
.super Ljava/lang/Object;
.source "CitySearchLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/4 v12, -0x1

    const/4 v7, 0x0

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 149
    .local v4, "time":J
    const-string/jumbo v8, "CitySearchLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCityMatchRunable: start "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    iget-object v8, v8, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajw;

    .line 153
    .local v1, "cityArea":Lajw;
    invoke-virtual {v1}, Lajw;->c()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "cityName":Ljava/lang/String;
    invoke-virtual {v1}, Lajw;->b()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "areaName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 156
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v9}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->b(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-le v9, v12, :cond_1

    move v3, v6

    .line 161
    .local v3, "isMatch":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 162
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    iget-object v9, v9, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->b:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v3    # "isMatch":Z
    :cond_1
    move v3, v7

    .line 156
    goto :goto_1

    .line 158
    :cond_2
    iget-object v9, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v9}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->b(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-le v9, v12, :cond_3

    move v3, v6

    .restart local v3    # "isMatch":Z
    :goto_2
    goto :goto_1

    .end local v3    # "isMatch":Z
    :cond_3
    move v3, v7

    goto :goto_2

    .line 165
    .end local v0    # "areaName":Ljava/lang/String;
    .end local v1    # "cityArea":Lajw;
    .end local v2    # "cityName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "CitySearchLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mCityMatchRunable: end "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Lajn;

    move-result-object v6

    invoke-virtual {v6}, Lajn;->notifyDataSetChanged()V

    .line 168
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$2;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->f(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 169
    return-void
.end method
