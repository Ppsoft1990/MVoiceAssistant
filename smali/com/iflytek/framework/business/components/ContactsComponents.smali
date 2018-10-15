.class public Lcom/iflytek/framework/business/components/ContactsComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "ContactsComponents.java"


# static fields
.field private static final SELECT_CONTACTS_FAIL:I = 0x0

.field private static final SELECT_CONTACTS_SUCCESS:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "ContactsComponents"

    sput-object v0, Lcom/iflytek/framework/business/components/ContactsComponents;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method

.method private convertContacts(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 97
    .local v3, "resultArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 98
    .local v0, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v1, "contactJson":Lorg/json/JSONObject;
    const-string/jumbo v5, "name"

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v5, "phoneno"

    .line 101
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v5, "id"

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->b()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v0    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v1    # "contactJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/iflytek/framework/business/components/ContactsComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "convertContacts"

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v4, Lcom/iflytek/framework/business/components/ContactsComponents;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "convertContacts, result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-object v3
.end method

.method private getContactItemsFromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "people"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v5, Lcom/iflytek/framework/business/components/ContactsComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getContactItemsFromJson"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v4

    .line 79
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 80
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    .local v0, "contact":Lorg/json/JSONObject;
    new-instance v1, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 82
    .local v1, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    const-string/jumbo v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/iflytek/base/contacts/entities/ContactItem;->a(J)V

    .line 83
    const-string/jumbo v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v5, "phoneno"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    .end local v0    # "contact":Lorg/json/JSONObject;
    .end local v1    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/iflytek/framework/business/components/ContactsComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getContactItemsFromJson"

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onSelectContact(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "addressBook":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    sget-object v2, Lcom/iflytek/framework/business/components/ContactsComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSelectContact"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v1, "param":Lorg/json/JSONObject;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v2, "addressbook"

    invoke-direct {p0, p2}, Lcom/iflytek/framework/business/components/ContactsComponents;->convertContacts(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object v2, p0, Lcom/iflytek/framework/business/components/ContactsComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "javascript:onSelectContact(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "param":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/iflytek/framework/business/components/ContactsComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSelectContact"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startContactsActivity(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 114
    .local p1, "selecedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    sget-object v1, Lcom/iflytek/framework/business/components/ContactsComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startContactsActivity"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/framework/business/components/ContactsComponents;->mContext:Landroid/content/Context;

    const-class v2, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 117
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_CONTACT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/iflytek/framework/business/components/ContactsComponents;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/iflytek/framework/business/components/ContactsComponents;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 124
    :cond_0
    return-void

    .line 119
    :cond_1
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_CONTACT"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 128
    sget-object v1, Lcom/iflytek/framework/business/components/ContactsComponents;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",resultCode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",data is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 130
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_CONTACT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 131
    .local v0, "selecedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/iflytek/framework/business/components/ContactsComponents;->onSelectContact(ILjava/util/ArrayList;)V

    .line 135
    .end local v0    # "selecedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/iflytek/framework/business/components/ContactsComponents;->onSelectContact(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 36
    sget-object v4, Lcom/iflytek/framework/business/components/ContactsComponents;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onExec action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " params = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string/jumbo v4, "loadContacts"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 41
    .local v2, "selectedPeople":Lorg/json/JSONArray;
    invoke-direct {p0, v2}, Lcom/iflytek/framework/business/components/ContactsComponents;->getContactItemsFromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    .end local v2    # "selectedPeople":Lorg/json/JSONArray;
    .local v0, "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :goto_0
    invoke-direct {p0, v0}, Lcom/iflytek/framework/business/components/ContactsComponents;->startContactsActivity(Ljava/util/ArrayList;)V

    .line 47
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    .line 49
    .end local v0    # "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_0
    return-object v3

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/iflytek/framework/business/components/ContactsComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onExec"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    invoke-direct {p0, v3}, Lcom/iflytek/framework/business/components/ContactsComponents;->getContactItemsFromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    goto :goto_0
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/iflytek/framework/business/components/ContactsComponents;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/iflytek/framework/business/components/ContactsComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .line 69
    return-void
.end method
