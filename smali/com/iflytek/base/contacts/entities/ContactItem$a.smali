.class public Lcom/iflytek/base/contacts/entities/ContactItem$a;
.super Ljava/lang/Object;
.source "ContactItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/contacts/entities/ContactItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/iflytek/base/contacts/entities/ContactItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/base/contacts/entities/ContactItem;Lcom/iflytek/base/contacts/entities/ContactItem;)I
    .locals 5
    .param p1, "item1"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p2, "item2"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 217
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 240
    :cond_1
    :goto_0
    return v2

    .line 220
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "sortHeader1":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "sortHeader2":Ljava/lang/String;
    const-string/jumbo v4, "[0-9a-zA-Z]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "[0-9a-zA-Z]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    const/4 v2, -0x1

    goto :goto_0

    .line 225
    :cond_3
    const-string/jumbo v4, "[0-9a-zA-Z]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "[0-9a-zA-Z]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 229
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    move v2, v3

    .line 230
    goto :goto_0

    .line 232
    :cond_6
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 233
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    move v2, v3

    .line 234
    goto :goto_0

    .line 236
    :cond_8
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 238
    :cond_9
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 240
    :cond_a
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 212
    check-cast p1, Lcom/iflytek/base/contacts/entities/ContactItem;

    check-cast p2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/contacts/entities/ContactItem$a;->a(Lcom/iflytek/base/contacts/entities/ContactItem;Lcom/iflytek/base/contacts/entities/ContactItem;)I

    move-result v0

    return v0
.end method
