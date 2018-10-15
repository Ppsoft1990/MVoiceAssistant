.class Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;
.super Landroid/widget/ArrayAdapter;
.source "CityManageLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lajw;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;Ljava/util/List;)V
    .locals 3
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "artists":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    .line 122
    invoke-static {p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->c(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03006f

    const v2, 0x7f0b0334

    invoke-direct {p0, v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->a:Ljava/util/ArrayList;

    .line 124
    return-void
.end method


# virtual methods
.method public a(I)Lajw;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->a(I)Lajw;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 139
    .local v6, "v":Landroid/view/View;
    if-eq v6, p2, :cond_2

    if-eqz v6, :cond_2

    .line 140
    new-instance v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-direct {v4, v7}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)V

    .line 141
    .local v4, "holder":Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;
    const v7, 0x7f0b0333

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;->a:Landroid/widget/ImageView;

    .line 142
    const v7, 0x7f0b0334

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;->b:Landroid/widget/TextView;

    .line 143
    const v7, 0x7f0b0335

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;->c:Landroid/widget/ImageView;

    .line 144
    const v7, 0x7f0b0336

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;->d:Landroid/view/View;

    .line 145
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    :goto_0
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->a(I)Lajw;

    move-result-object v2

    .line 152
    .local v2, "cityArea":Lajw;
    if-eqz v2, :cond_0

    .line 153
    const-string/jumbo v0, ""

    .line 154
    .local v0, "addressInfo":Ljava/lang/String;
    invoke-virtual {v2}, Lajw;->b()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "areaName":Ljava/lang/String;
    invoke-virtual {v2}, Lajw;->c()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "cityName":Ljava/lang/String;
    invoke-virtual {v2}, Lajw;->d()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "provinceName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_1
    iget-object v7, v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .end local v0    # "addressInfo":Ljava/lang/String;
    .end local v1    # "areaName":Ljava/lang/String;
    .end local v3    # "cityName":Ljava/lang/String;
    .end local v5    # "provinceName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_1

    .line 167
    iget-object v7, v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;->d:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_1
    iget-object v7, v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;->a:Landroid/widget/ImageView;

    new-instance v8, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    invoke-direct {v8, p0, v2, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;Lajw;I)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-object v6

    .line 148
    .end local v2    # "cityArea":Lajw;
    .end local v4    # "holder":Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;

    .restart local v4    # "holder":Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$b;
    goto :goto_0

    .line 160
    .restart local v0    # "addressInfo":Ljava/lang/String;
    .restart local v1    # "areaName":Ljava/lang/String;
    .restart local v2    # "cityArea":Lajw;
    .restart local v3    # "cityName":Ljava/lang/String;
    .restart local v5    # "provinceName":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
