.class Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$3;
.super Ljava/lang/Object;
.source "CitySearchLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 176
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$3;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$3;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    iget-object v6, v6, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->b:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajw;

    .line 182
    .local v1, "cityArea":Lajw;
    if-eqz v1, :cond_4

    .line 183
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_CITYS_DATA"

    invoke-virtual {v6, v7}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "cityCache":Ljava/lang/String;
    invoke-static {v3}, Lajo;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 186
    .local v4, "cityList":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    const/4 v5, 0x0

    .line 187
    .local v5, "isExist":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    .line 188
    .local v0, "city":Lajw;
    invoke-virtual {v1, v0}, Lajw;->a(Lajw;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 189
    const/4 v5, 0x1

    .line 190
    const-string/jumbo v6, "CitySearchLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onItemClick: city isExist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lajw;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "city":Lajw;
    :cond_1
    if-nez v5, :cond_2

    .line 196
    const-string/jumbo v6, "CitySearchLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onItemClick: city add: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lajw;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-static {v4}, Lajo;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "cityAreas":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_CITYS_DATA"

    invoke-virtual {v6, v7, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v2    # "cityAreas":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$3;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->h(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Lajq;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 203
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$3;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->h(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Lajq;

    move-result-object v6

    invoke-interface {v6, v1, v5}, Lajq;->a(Lajw;Z)V

    .line 206
    :cond_3
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$3;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-virtual {v6}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a()V

    .line 208
    .end local v3    # "cityCache":Ljava/lang/String;
    .end local v4    # "cityList":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    .end local v5    # "isExist":Z
    :cond_4
    return-void
.end method
