.class public Lcom/iflytek/base/contacts/entities/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5be2f10a6688daefL


# instance fields
.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-ne p0, p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 35
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 36
    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactInfo;

    .line 37
    .local v0, "other":Lcom/iflytek/base/contacts/entities/ContactInfo;
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 38
    iget-object v3, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_5
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 43
    iget-object v3, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_6
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 46
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 21
    const/16 v0, 0x1f

    .line 22
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 23
    .local v1, "result":I
    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 24
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 25
    return v1

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method
