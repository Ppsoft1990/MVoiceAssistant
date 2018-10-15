.class public Lcom/iflytek/framework/ui/share/ShareAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mShareData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/ui/share/LxShareObject$Build;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/ui/share/LxShareObject$Build;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "shareData":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/ui/share/LxShareObject$Build;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mShareData:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mShareData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mShareData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 53
    iget-object v7, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mShareData:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 54
    .local v2, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    if-nez p2, :cond_1

    .line 55
    new-instance v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;-><init>(Lcom/iflytek/framework/ui/share/ShareAdapter$1;)V

    .line 56
    .local v6, "viewHolder":Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;
    iget-object v7, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030119

    invoke-virtual {v7, v8, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 57
    .local v5, "rootView":Landroid/view/View;
    const v7, 0x7f0b0660

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 58
    const v7, 0x7f0b0661

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 59
    move-object p2, v5

    .line 60
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    .end local v5    # "rootView":Landroid/view/View;
    :goto_0
    const-string/jumbo v7, "com.tencent.mm"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 65
    iget-boolean v7, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTimeline:Z

    if-eqz v7, :cond_3

    .line 66
    iget-object v7, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mContext:Landroid/content/Context;

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 67
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201cb

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    :goto_1
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string/jumbo v8, "\u5fae\u4fe1\u670b\u53cb\u5708"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    :goto_2
    return-object p2

    .line 62
    .end local v6    # "viewHolder":Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;

    .restart local v6    # "viewHolder":Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;
    goto :goto_0

    .line 69
    :cond_2
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201cc

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 73
    :cond_3
    iget-object v7, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mContext:Landroid/content/Context;

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 74
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201d3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    :goto_3
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string/jumbo v8, "\u5fae\u4fe1\u597d\u53cb"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 76
    :cond_4
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201d4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 80
    :cond_5
    const-string/jumbo v7, "com.sina.weibo"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 81
    iget-object v7, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mContext:Landroid/content/Context;

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 82
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201cf

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :goto_4
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string/jumbo v8, "\u65b0\u6d6a\u5fae\u535a"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 84
    :cond_6
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201d0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 87
    :cond_7
    const-string/jumbo v7, "com.tencent.mobileqq"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 88
    iget-object v7, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mContext:Landroid/content/Context;

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 89
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201c3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    :goto_5
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string/jumbo v8, "QQ\u597d\u53cb"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 91
    :cond_8
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201c4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 94
    :cond_9
    const-string/jumbo v7, "com.qzone"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 95
    iget-object v7, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mContext:Landroid/content/Context;

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 96
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201c7

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    :goto_6
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string/jumbo v8, "QQ\u7a7a\u95f4"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 98
    :cond_a
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201c8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 101
    :cond_b
    const-string/jumbo v7, "com.android.mms"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "com.htc.sense.mms"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "com.sonyericsson.conversations"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "com.yulong.coolmessage"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    .line 104
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "com.android.messaging"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "com.samsung.android.messaging"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "com.lenovo.ideafriend"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    .line 107
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string/jumbo v7, "com.google.android.apps.messaging"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    .line 108
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 110
    :cond_c
    iget-object v7, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mContext:Landroid/content/Context;

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 111
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201bc

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    :goto_7
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string/jumbo v8, "\u77ed\u4fe1"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 113
    :cond_d
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201bd

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 116
    :cond_e
    const-string/jumbo v7, "more"

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 117
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v8, 0x7f0201c0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string/jumbo v8, "\u66f4\u591a"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 120
    :cond_f
    iget-object v7, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mClassName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 121
    iget-object v7, p0, Lcom/iflytek/framework/ui/share/ShareAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 122
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v3, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    iget-object v9, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mClassName:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    invoke-virtual {v4, v3, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 125
    .local v1, "app":Landroid/content/pm/ResolveInfo;
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 126
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 127
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v7, v6, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
