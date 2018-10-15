.class public Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmsPrivacySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
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

.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;
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
    .line 366
    .local p3, "pData":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .line 367
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->mContext:Landroid/content/Context;

    .line 369
    if-nez p3, :cond_0

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_0
    iput-object p3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    goto :goto_0
.end method

.method private createView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 391
    if-nez p2, :cond_0

    .line 392
    new-instance p2, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;-><init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 394
    check-cast v0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->bindView(ILcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V

    .line 395
    return-object p2
.end method


# virtual methods
.method protected bindView(ILcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    .prologue
    .line 405
    if-nez p2, :cond_0

    .line 406
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$300(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ContactNameSortView is null"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->showData(Ljava/lang/String;I)V

    .line 411
    new-instance v0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$1;-><init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V

    invoke-virtual {p2, v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 418
    invoke-static {p2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->access$500(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;-><init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;I)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 464
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 378
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->createView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 455
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
    .line 468
    .local p1, "mContactList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->mALLData:Ljava/util/List;

    .line 469
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->notifyDataSetChanged()V

    .line 470
    return-void
.end method
