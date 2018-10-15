.class public Labw;
.super Lacb;
.source "ContactStartNewInteractionHelper.java"


# direct methods
.method public static a(Lacp;Laau;)V
    .locals 6
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;

    .prologue
    .line 132
    const-string/jumbo v2, "ContactStartNewInteractionHelper"

    const-string/jumbo v3, "canceContactInteraction start"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-nez p0, :cond_0

    .line 134
    const-string/jumbo v2, "ContactStartNewInteractionHelper"

    const-string/jumbo v3, "pBusinessHandler is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    .line 139
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0c033e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "tip":Ljava/lang/String;
    invoke-static {p0, p1, v1}, Labw;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 143
    invoke-static {v1}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    invoke-interface {p0, v2, v3, v4, v5}, Lacp;->speakTts(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 146
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "tip":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    .line 147
    const-string/jumbo v2, "ContactStartNewInteractionHelper"

    const-string/jumbo v3, "canceContactInteraction end"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lacp;Laau;Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 8
    .param p0, "mBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p2, "pContactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 43
    const-string/jumbo v5, "ContactStartNewInteractionHelper"

    const-string/jumbo v6, "startCreateContactTask start"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-nez p0, :cond_0

    .line 45
    const-string/jumbo v5, "ContactStartNewInteractionHelper"

    const-string/jumbo v6, "mBusinessHandler is null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    .local v1, "context":Landroid/content/Context;
    const v5, 0x7f0c034e

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "tip":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "contactName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "phoneNumber":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    const-string/jumbo v5, ""

    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 55
    :cond_2
    const v5, 0x7f0c034f

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    :cond_3
    invoke-static {p0, p1, v3}, Labw;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 59
    const-wide/16 v6, 0x12c

    invoke-static {p0, v3, v6, v7}, Labw;->a(Lacp;Ljava/lang/String;J)V

    .line 62
    new-instance v4, Lada;

    invoke-direct {v4, p0, p2}, Lada;-><init>(Lacp;Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 63
    .local v4, "widgetContactCreateView":Lada;
    const-wide/16 v6, 0x258

    invoke-interface {p0, v4, v6, v7}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 70
    const-string/jumbo v5, "ContactStartNewInteractionHelper"

    const-string/jumbo v6, "startCreateContactTask end"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lacp;Laau;Lcom/iflytek/base/contacts/entities/ContactSet;)V
    .locals 10
    .param p0, "pBusinessHandler"    # Lacp;
    .param p1, "pContactFilterResult"    # Laau;
    .param p2, "pContactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;

    .prologue
    .line 83
    const-string/jumbo v8, "ContactStartNewInteractionHelper"

    const-string/jumbo v9, "startShowContactTask start"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez p0, :cond_0

    .line 85
    const-string/jumbo v8, "ContactStartNewInteractionHelper"

    const-string/jumbo v9, "pBusinessHandler is null"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-interface {p0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, "context":Landroid/content/Context;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0c0356

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "tip":Ljava/lang/String;
    invoke-static {p0, p1, v6}, Labw;->a(Lacp;Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    .line 92
    const-wide/16 v8, 0x12c

    invoke-static {p0, v6, v8, v9}, Labw;->a(Lacp;Ljava/lang/String;J)V

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v3, "showList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 97
    const-string/jumbo v5, ""

    .line 98
    .local v5, "specNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 100
    invoke-static {v2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 104
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "`"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 105
    invoke-static {v2, v5}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "showNumber":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    .end local v2    # "number":Ljava/lang/String;
    .end local v4    # "showNumber":Ljava/lang/String;
    .end local v5    # "specNumber":Ljava/lang/String;
    :cond_2
    new-instance v7, Ladc;

    move-object v8, p0

    check-cast v8, Labx;

    invoke-direct {v7, v0, v8, p2, v3}, Ladc;-><init>(Landroid/content/Context;Labx;Lcom/iflytek/base/contacts/entities/ContactSet;Ljava/util/List;)V

    .line 115
    .local v7, "widgetContactSearchListView":Ladc;
    const-wide/16 v8, 0x258

    invoke-interface {p0, v7, v8, v9}, Lacp;->addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 119
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    .line 121
    const-string/jumbo v8, "ContactStartNewInteractionHelper"

    const-string/jumbo v9, "startShowContactTask end"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
