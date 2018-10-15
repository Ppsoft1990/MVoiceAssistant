.class public Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;
.super Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;
.source "SelectContactsActivity.java"


# static fields
.field public static final EXTRA_CONTACTS:Ljava/lang/String; = "com.iflytek.cmcc.EXTRA_CONTACT"

.field private static final TAG:Ljava/lang/String; = "SelectContactsActivity"


# instance fields
.field private mConfirmBtnColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;)Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getContactEditPanelView()Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    move-result-object v0

    return-object v0
.end method

.method private initIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_EDIT_WHAT"

    const-string/jumbo v2, "EDIT_CONTACTS"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_CONTACT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    .local v0, "initContactItem":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-nez v0, :cond_0

    .line 85
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_CONTACT"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 88
    .end local v0    # "initContactItem":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_0
    return-void
.end method

.method private setView()V
    .locals 8

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getContactEditPanelView()Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    move-result-object v1

    .line 45
    .local v1, "panel":Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;
    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v0, p0}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "divider":Lcom/iflytek/base/skin/customView/XImageView;
    const-string/jumbo v3, "image.contact_add_list_item_divider"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 49
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->setOrientation(I)V

    .line 50
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v0, v3, v4}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->addView(Landroid/view/View;II)V

    .line 53
    new-instance v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 54
    .local v2, "temp":Lcom/iflytek/base/contacts/entities/ContactItem;
    const-string/jumbo v3, "\u793a\u4f8b"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v3, "12345"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->a(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 57
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 60
    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 64
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity$1;

    invoke-direct {v4, p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity$1;-><init>(Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;)V

    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .end local v0    # "divider":Lcom/iflytek/base/skin/customView/XImageView;
    .end local v2    # "temp":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_0
    return-void
.end method


# virtual methods
.method protected deleteContact()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getContactEditPanelView()Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getSelectContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getContactEditPanelView()Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    move-result-object v1

    .line 100
    .local v1, "panel":Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getSelectContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 101
    .local v0, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    goto :goto_0

    .line 103
    .end local v0    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getSelectContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 104
    const-string/jumbo v2, "SelectContactsActivity"

    const-string/jumbo v3, "clear ContactEditPanelView\'s contacts"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->onContactNumChanged()V

    .line 107
    .end local v1    # "panel":Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;
    :cond_1
    return-void
.end method

.method protected getContactsExcessTips()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6700\u591a\u53ea\u80fd\u9009\u62e9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getMaxSelectContactNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u4e2a\u8054\u7cfb\u4eba"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMaxSelectContactNum()I
    .locals 1

    .prologue
    .line 111
    const v0, 0x7fffffff

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getConfirmButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v1, "returnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getSelectContacts()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getSelectContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_CONTACT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 129
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->setResult(ILandroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->finish()V

    .line 134
    .end local v0    # "data":Landroid/content/Intent;
    .end local v1    # "returnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-super {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onContactNumChanged()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->onContactNumChanged()V

    .line 139
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getConfirmButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    .line 140
    .local v0, "confirm":Lcom/iflytek/base/skin/customView/XButton;
    iget-object v1, p0, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->mConfirmBtnColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->mConfirmBtnColor:Landroid/content/res/ColorStateList;

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getSelectContacts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    const-string/jumbo v1, "#bababa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setTextColor(I)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setEnabled(Z)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->mConfirmBtnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->initIntent(Landroid/content/Intent;)V

    .line 38
    invoke-super {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->setView()V

    .line 41
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->initIntent(Landroid/content/Intent;)V

    .line 117
    invoke-super {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 118
    return-void
.end method
