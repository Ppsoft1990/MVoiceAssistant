.class public Lcom/iflytek/base/contacts/entities/ContactSet;
.super Ljava/lang/Object;
.source "ContactSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltf;


# static fields
.field private static final serialVersionUID:J = -0x3f4e3407465a7cc8L


# instance fields
.field private mContactIconUri:Ljava/lang/String;

.field private mContactId:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumberLocationHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberTypeHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumbers:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mPhoneIds:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumberTypeHashMap:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumberLocationHashMap:Ljava/util/HashMap;

    .line 74
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mDate:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public changeItemToSet(Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 3
    .param p1, "contactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 82
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mPhoneIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mPhoneIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 48
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 49
    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 50
    .local v0, "other":Lcom/iflytek/base/contacts/entities/ContactSet;
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mContactId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 51
    iget-object v3, v0, Lcom/iflytek/base/contacts/entities/ContactSet;->mContactId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mContactId:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/base/contacts/entities/ContactSet;->mContactId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 56
    iget-object v3, v0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_7
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumbers:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 61
    iget-object v3, v0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumbers:Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    move v1, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_8
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumbers:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_9
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mPhoneIds:Ljava/util/ArrayList;

    if-nez v3, :cond_a

    .line 66
    iget-object v3, v0, Lcom/iflytek/base/contacts/entities/ContactSet;->mPhoneIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move v1, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_a
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mPhoneIds:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/iflytek/base/contacts/entities/ContactSet;->mPhoneIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 69
    goto :goto_0
.end method

.method public getContactIconUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mContactIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pNumber"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumberLocationHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumberLocationHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumberLocationHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getNumberTypesHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumberTypeHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNumbers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mPhoneIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSimMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mSimMode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 32
    const/16 v0, 0x1f

    .line 33
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 34
    .local v1, "result":I
    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mContactId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 35
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 36
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumbers:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 37
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mPhoneIds:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 38
    return v1

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mContactId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 36
    :cond_2
    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    goto :goto_2

    .line 37
    :cond_3
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mPhoneIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setContactIconUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactIconUri"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mContactIconUri:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mContactId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mDate:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setNumberLocationHashMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "mNumberLocationHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumberLocationHashMap:Ljava/util/HashMap;

    .line 175
    return-void
.end method

.method public setNumberTypeHashMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "typeHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumberTypeHashMap:Ljava/util/HashMap;

    .line 127
    return-void
.end method

.method public setNumbers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mNumbers:Ljava/util/ArrayList;

    .line 135
    return-void
.end method

.method public setPhoneIds(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mPhoneIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public setSimMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactSet;->mSimMode:Ljava/lang/String;

    .line 95
    return-void
.end method
