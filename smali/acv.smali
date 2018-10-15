.class public Lacv;
.super Ljava/lang/Object;
.source "ContactSpeechUtils.java"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lacv;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lacv;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "pFocus"    # Ljava/lang/String;
    .param p1, "pGrammars"    # [Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, "speechIntent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v1, "local_scene"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string/jumbo v1, "local_lexicon_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    return-object v0
.end method

.method public static a(Ljava/util/List;Laau;Ljava/util/HashMap;)Lcom/iflytek/base/contacts/entities/ContactSet;
    .locals 7
    .param p1, "pFilterResult"    # Laau;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;",
            "Laau;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/business/speech/ResultGrammarData;",
            ">;)",
            "Lcom/iflytek/base/contacts/entities/ContactSet;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "pContactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .local p2, "pContactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    const/4 v3, 0x0

    .line 108
    .local v3, "mSelectContactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {p1}, Laau;->c()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 109
    invoke-virtual {p1}, Laau;->c()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "grammarWord":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 111
    if-eqz p2, :cond_2

    .line 112
    invoke-static {v1, p2}, Lacv;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "contactName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 115
    invoke-static {v1}, Labc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "mCommandWord":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    invoke-static {v2, p2}, Lacv;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .end local v2    # "mCommandWord":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_2

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 123
    .local v4, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    move-object v3, v4

    .line 137
    .end local v0    # "contactName":Ljava/lang/String;
    .end local v1    # "grammarWord":Ljava/lang/String;
    .end local v4    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_2
    return-object v3
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactSet;
    .locals 3
    .param p1, "pNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iflytek/base/contacts/entities/ContactSet;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "pContactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 150
    .local v0, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    .end local v0    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .param p0, "recoName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/business/speech/ResultGrammarData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 167
    :cond_0
    const/4 v2, 0x0

    .line 181
    :cond_1
    :goto_0
    return-object v2

    .line 169
    :cond_2
    const/4 v2, 0x0

    .line 170
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    iget-object v2, v3, Lcom/iflytek/framework/business/speech/ResultGrammarData;->mGrammar:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 174
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    iget-object v2, v3, Lcom/iflytek/framework/business/speech/ResultGrammarData;->mGrammar:Ljava/lang/String;

    .line 177
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;
    .locals 9
    .param p0, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/business/speech/ResultGrammarData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "pContactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p0, :cond_1

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v4, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 40
    .local v6, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v6    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 44
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    .local v2, "name":Ljava/lang/String;
    new-instance v5, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v7, Lcom/iflytek/framework/business/speech/ResultGrammarType;->serial_number:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v5, v2, v7}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 46
    .local v5, "serialData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0c0395

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 47
    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0c0396

    .line 48
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v3, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v7, Lcom/iflytek/framework/business/speech/ResultGrammarType;->name:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v3, v2, v7}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 51
    .local v3, "nameData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nameData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v4    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "serialData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/HashMap;)[Ljava/lang/String;
    .locals 5
    .param p0, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/business/speech/ResultGrammarData;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "pContactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarData;>;"
    sget-boolean v4, Lacv;->a:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 68
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 69
    .local v0, "grammars":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 70
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 71
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 74
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    const v4, 0x7f0c0362

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 76
    return-object v0
.end method
