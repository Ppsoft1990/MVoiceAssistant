.class public Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallPrivacyAddContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
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

.field private mSelectedContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
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
    .line 483
    .local p3, "pData":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .line 484
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 485
    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mContext:Landroid/content/Context;

    .line 486
    iput-object p3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mALLData:Ljava/util/List;

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    .line 488
    return-void
.end method

.method private createView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 505
    if-nez p2, :cond_0

    .line 506
    new-instance p2, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 508
    check-cast v0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->bindView(ILcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;)V

    .line 509
    return-object p2
.end method


# virtual methods
.method public addItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 581
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_0
    return-void
.end method

.method protected bindView(ILcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;

    .prologue
    .line 519
    if-nez p2, :cond_1

    .line 520
    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$1000(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ContactNameSortView is null"

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 526
    .local v0, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v7

    .line 525
    invoke-static {v7}, Lcom/iflytek/viafly/util/IflyStringUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, "newSortHeader":Ljava/lang/String;
    const/4 v1, 0x0

    .line 528
    .local v1, "header":Ljava/lang/String;
    if-nez p1, :cond_3

    .line 529
    move-object v1, v6

    .line 538
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v7, v1, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->showData(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 539
    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 540
    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 541
    .local v5, "len":I
    invoke-virtual {p2}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->getCheckBox()Lcom/iflytek/base/skin/customView/XCheckBox;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/iflytek/base/skin/customView/XCheckBox;->setChecked(Z)V

    .line 542
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_0

    .line 543
    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v7}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 544
    invoke-virtual {p2}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->getCheckBox()Lcom/iflytek/base/skin/customView/XCheckBox;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/iflytek/base/skin/customView/XCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 530
    .end local v2    # "i":I
    .end local v5    # "len":I
    :cond_3
    if-lez p1, :cond_2

    .line 531
    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mALLData:Ljava/util/List;

    add-int/lit8 v8, p1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 533
    .local v3, "lastContactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v7

    .line 532
    invoke-static {v7}, Lcom/iflytek/viafly/util/IflyStringUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "lastSortHeader":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 535
    move-object v1, v6

    goto :goto_1

    .line 542
    .end local v3    # "lastContactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v4    # "lastSortHeader":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "len":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mALLData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 561
    const/4 v0, 0x0

    .line 563
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 609
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 614
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedContactItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 555
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 492
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->createView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mALLData:Ljava/util/List;

    .line 594
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 595
    return-void
.end method

.method public removeItemBySeLectedPos(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 604
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 605
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
    .line 618
    .local p1, "mContactItemsList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mALLData:Ljava/util/List;

    .line 619
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->notifyDataSetChanged()V

    .line 620
    return-void
.end method

.method public setSelectedContactItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, "plist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    .line 572
    return-void
.end method
