.class public Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryAdapter"


# instance fields
.field private callBack:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;

.field public mCategoryStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "mCategoryStates":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mCategoryStates:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mState:I

    .line 41
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mCategoryStates:Ljava/util/List;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "state"    # I
    .param p4, "callBack"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;I",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "mCategoryStates":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mCategoryStates:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mState:I

    .line 30
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mContext:Landroid/content/Context;

    .line 31
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "mCategoryStates":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .restart local p2    # "mCategoryStates":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mCategoryStates:Ljava/util/List;

    .line 36
    iput-object p4, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->callBack:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;

    .line 37
    iput p3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mState:I

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;)Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->callBack:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mCategoryStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mCategoryStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 63
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mCategoryStates:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    .line 64
    .local v0, "cardCategoryItem":Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    if-nez p2, :cond_0

    .line 65
    new-instance v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;-><init>(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;)V

    .line 66
    .local v2, "wrapper":Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000b

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, "rootView":Landroid/view/View;
    const v3, 0x7f0b009a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->name:Landroid/widget/TextView;

    .line 68
    const v3, 0x7f0b009b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->image:Landroid/widget/ImageView;

    .line 69
    const v3, 0x7f0b0099

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->rotoView:Landroid/widget/RelativeLayout;

    .line 70
    move-object p2, v1

    .line 71
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    .end local v1    # "rootView":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    .line 112
    :goto_1
    return-object p2

    .line 73
    .end local v2    # "wrapper":Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;

    .restart local v2    # "wrapper":Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    iget-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->name:Landroid/widget/TextView;

    const v4, 0x7f020014

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 83
    iget-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->name:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->name:Landroid/widget/TextView;

    const v4, 0x7f0200af

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 87
    iget v3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 100
    :goto_2
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 101
    iget-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_3
    iget-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->rotoView:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;-><init>(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 89
    :pswitch_0
    iget-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 92
    :pswitch_1
    iget-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->image:Landroid/widget/ImageView;

    const v4, 0x7f020100

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 96
    :pswitch_2
    iget-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v3, v2, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->image:Landroid/widget/ImageView;

    const v4, 0x7f020101

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "mCategoryStates":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "mCategoryStates":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .restart local p1    # "mCategoryStates":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;>;"
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->mCategoryStates:Ljava/util/List;

    .line 127
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->notifyDataSetChanged()V

    .line 128
    return-void
.end method
