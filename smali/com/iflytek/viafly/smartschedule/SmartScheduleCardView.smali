.class public Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;
.super Landroid/widget/LinearLayout;
.source "SmartScheduleCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

.field private mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;Lcom/iflytek/viafly/smartschedule/CardActionListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    .param p3, "ls"    # Lcom/iflytek/viafly/smartschedule/CardActionListener;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    if-eqz p2, :cond_0

    .line 28
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .line 29
    iput-object p3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    .line 30
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->initView(Landroid/content/Context;)V

    .line 32
    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030120

    invoke-virtual {v10, v11, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    const v10, 0x7f0b0673

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, "content":Landroid/view/View;
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 43
    const v10, 0x7f0b0672

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v11}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    const v10, 0x7f0b0678

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 52
    .local v3, "mBottom":Landroid/widget/RelativeLayout;
    const v10, 0x7f0b067b

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 53
    .local v4, "mBottomBtn":Landroid/widget/TextView;
    const v10, 0x7f0b0679

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 54
    .local v5, "mBottomBtnLeft":Landroid/widget/TextView;
    const v10, 0x7f0b0677

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 55
    .local v8, "mEdit":Landroid/view/View;
    const v10, 0x7f0b067a

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 57
    .local v7, "mClose":Landroid/view/View;
    const v10, 0x7f0b0674

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/iflytek/base/skin/customView/XImageView;

    .line 59
    .local v6, "mCardImage":Lcom/iflytek/base/skin/customView/XImageView;
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getScheduleType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 61
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getCardIcon()Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "path":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 63
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "cardImage":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 65
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v6, v0}, Lcom/iflytek/base/skin/customView/XImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cardImage":Ljava/io/File;
    .end local v9    # "path":Ljava/lang/String;
    :goto_0
    const v10, 0x7f0b0675

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v11}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v10, 0x7f0b0676

    invoke-virtual {p0, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v11}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getTipText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getBottomText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 85
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    :goto_1
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void

    .line 70
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "cardImage":Ljava/io/File;
    .restart local v9    # "path":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getCardIconUrl()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v10, v11}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 73
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getCardIconUrl()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v10, v11}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 76
    .end local v1    # "cardImage":Ljava/io/File;
    :cond_3
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getCardIconUrl()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v10, v11}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 79
    .end local v9    # "path":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getCardIconUrl()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v10, v11}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 87
    :cond_5
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getBottomLeftText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 88
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getBottomLeftText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_6
    iget-object v10, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getBottomText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0673

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/smartschedule/CardActionListener;->onContentClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b067b

    if-ne v0, v1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/smartschedule/CardActionListener;->onBottomClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0679

    if-ne v0, v1, :cond_3

    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/smartschedule/CardActionListener;->onBottomLeftClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0677

    if-ne v0, v1, :cond_4

    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/smartschedule/CardActionListener;->onEditClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b067a

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mLs:Lcom/iflytek/viafly/smartschedule/CardActionListener;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleCardView;->mData:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/smartschedule/CardActionListener;->onCloseClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method
