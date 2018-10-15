.class Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;
.super Landroid/widget/ArrayAdapter;
.source "ServiceManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Laic;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;Ljava/util/List;)V
    .locals 2
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, "artists":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->b:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    .line 275
    const v0, 0x7f030114

    const v1, 0x7f0b03cf

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a:Ljava/util/ArrayList;

    .line 277
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 318
    const-string/jumbo v0, "Fee"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const v0, 0x7f0203b9

    .line 335
    :goto_0
    return v0

    .line 320
    :cond_0
    const-string/jumbo v0, "Weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const v0, 0x7f02041c

    goto :goto_0

    .line 322
    :cond_1
    const-string/jumbo v0, "ListenBook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    const v0, 0x7f0203c7

    goto :goto_0

    .line 324
    :cond_2
    const-string/jumbo v0, "Music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    const v0, 0x7f0203d5

    goto :goto_0

    .line 326
    :cond_3
    const-string/jumbo v0, "News"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    const v0, 0x7f0203d6

    goto :goto_0

    .line 328
    :cond_4
    const-string/jumbo v0, "Movie"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 329
    const v0, 0x7f0203d4

    goto :goto_0

    .line 330
    :cond_5
    const-string/jumbo v0, "Food"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 331
    const v0, 0x7f0203bd

    goto :goto_0

    .line 332
    :cond_6
    const-string/jumbo v0, "AudioNews"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 333
    const v0, 0x7f0203b1

    goto :goto_0

    .line 335
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string/jumbo v0, "Fee"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string/jumbo v0, "\u8bdd\u8d39\u6d41\u91cf"

    .line 356
    :goto_0
    return-object v0

    .line 341
    :cond_0
    const-string/jumbo v0, "Weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const-string/jumbo v0, "\u5929\u6c14"

    goto :goto_0

    .line 343
    :cond_1
    const-string/jumbo v0, "ListenBook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    const-string/jumbo v0, "\u542c\u4e66"

    goto :goto_0

    .line 345
    :cond_2
    const-string/jumbo v0, "Music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    const-string/jumbo v0, "\u97f3\u4e50"

    goto :goto_0

    .line 347
    :cond_3
    const-string/jumbo v0, "News"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 348
    const-string/jumbo v0, "\u65b0\u95fb"

    goto :goto_0

    .line 349
    :cond_4
    const-string/jumbo v0, "Movie"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 350
    const-string/jumbo v0, "\u7535\u5f71"

    goto :goto_0

    .line 351
    :cond_5
    const-string/jumbo v0, "Food"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 352
    const-string/jumbo v0, "\u7f8e\u98df"

    goto :goto_0

    .line 353
    :cond_6
    const-string/jumbo v0, "AudioNews"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 354
    const-string/jumbo v0, "\u6709\u58f0\u8d44\u8baf"

    goto :goto_0

    .line 356
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Laic;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 361
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laic;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a(I)Laic;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 286
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    .line 291
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 292
    .local v3, "v":Landroid/view/View;
    if-eq v3, p2, :cond_0

    if-eqz v3, :cond_0

    .line 293
    new-instance v1, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->b:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    invoke-direct {v1, v4}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)V

    .line 294
    .local v1, "holder":Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;
    const v4, 0x7f0b02e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->a:Landroid/widget/ImageView;

    .line 295
    const v4, 0x7f0b03cf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->b:Landroid/widget/TextView;

    .line 296
    const v4, 0x7f0b064c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v4, v1, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 297
    const v4, 0x7f0b03ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v1, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->e:Landroid/widget/RelativeLayout;

    .line 298
    iget-object v4, v1, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->c:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v5, "stateList.setting_subpage_list_arrow_states"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 299
    iget-object v4, v1, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->c:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v4, v7, v7, v7, v7}, Lcom/iflytek/base/skin/customView/XImageView;->setPadding(IIII)V

    .line 300
    const v4, 0x7f0b064b

    .line 301
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->d:Landroid/widget/ImageView;

    .line 302
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 308
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a(I)Laic;

    move-result-object v4

    invoke-virtual {v4}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "mGroupId":Ljava/lang/String;
    iget-object v4, v1, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    iget-object v4, v1, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;->b:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v2    # "mGroupId":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 305
    .end local v1    # "holder":Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;

    .restart local v1    # "holder":Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$b;
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "ServiceManageActivity"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
