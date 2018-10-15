.class public Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallPrivacySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactNameAdapter"
.end annotation


# instance fields
.field private mALLData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p3, "pData":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .line 383
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 384
    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->mContext:Landroid/content/Context;

    .line 385
    if-nez p3, :cond_0

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iput-object p3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    goto :goto_0
.end method

.method private createView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 407
    if-nez p2, :cond_0

    .line 408
    new-instance p2, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 410
    check-cast v0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->bindView(ILcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V

    .line 411
    return-object p2
.end method


# virtual methods
.method protected bindView(ILcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    .prologue
    .line 421
    if-nez p2, :cond_0

    .line 422
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->access$700(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ContactNameSortView is null"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;->showData(Ljava/lang/String;I)V

    .line 427
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter$1;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V

    invoke-virtual {p2, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 434
    invoke-static {p2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;->access$900(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter$2;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;I)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    .line 460
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 480
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 394
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->createView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 471
    return-void
.end method

.method public setContactItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "mContactList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    .line 485
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->notifyDataSetChanged()V

    .line 486
    return-void
.end method
