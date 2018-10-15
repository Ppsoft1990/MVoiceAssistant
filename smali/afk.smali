.class public Lafk;
.super Ljava/lang/Object;
.source "ListenMessageItemDelegate.java"

# interfaces
.implements Ladv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lafk;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lafk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lafk;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lafk;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lafk;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lafk;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "chapterId"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "entry"

    const-string/jumbo v2, "mic_voice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "contentId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "chapterId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p2, "searchName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "resultLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/dialogmode/listenbook/BookMoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, "BOOK_MORE_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v1, "BOOK_SEARCH_INFO"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f030064

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 21
    .param p1, "viewHolder"    # Lady;
    .param p2, "chatMessage"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 42
    move-object/from16 v0, p2

    instance-of v4, v0, Lafj;

    if-eqz v4, :cond_4

    move-object/from16 v14, p2

    .line 43
    check-cast v14, Lafj;

    .line 44
    .local v14, "listenMessage":Lafj;
    invoke-virtual/range {p1 .. p1}, Lady;->b()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0312

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 45
    .local v15, "resultLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {p1 .. p1}, Lady;->b()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0313

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 46
    .local v19, "resultView":Landroid/widget/LinearLayout;
    invoke-virtual/range {p1 .. p1}, Lady;->b()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0315

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 47
    .local v18, "resultMore":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lady;->b()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0314

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 48
    .local v16, "resultLine":Landroid/view/View;
    invoke-virtual {v14}, Lafj;->b()Lafi;

    move-result-object v4

    invoke-virtual {v4}, Lafi;->b()Ljava/util/ArrayList;

    move-result-object v17

    .line 49
    .local v17, "resultLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    invoke-virtual {v14}, Lafj;->b()Lafi;

    move-result-object v4

    invoke-virtual {v4}, Lafi;->a()Ljava/lang/String;

    move-result-object v20

    .line 50
    .local v20, "searchName":Ljava/lang/String;
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 51
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_3

    const/4 v4, 0x3

    if-ge v13, v4, :cond_3

    .line 54
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .line 56
    .local v9, "bookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->l()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u7eed\u64ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "descShow":Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;

    invoke-virtual/range {p1 .. p1}, Lady;->b()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->f()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v3 .. v8}, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v3, "listenBookVoiceItemView":Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c()Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "historyContentId":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "historyChapterId":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h()I

    move-result v12

    .line 74
    .local v12, "historyOffset":I
    new-instance v4, Lafk$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11, v10, v12}, Lafk$1;-><init>(Lafk;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "listenBookVoiceItemView":Lcom/iflytek/viafly/dialogmode/listenbook/ListenBookVoiceItemView;
    .end local v8    # "descShow":Ljava/lang/String;
    .end local v10    # "historyChapterId":Ljava/lang/String;
    .end local v11    # "historyContentId":Ljava/lang/String;
    .end local v12    # "historyOffset":I
    :cond_0
    const-string/jumbo v8, ""

    .restart local v8    # "descShow":Ljava/lang/String;
    goto :goto_1

    .line 63
    .end local v8    # "descShow":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 64
    invoke-virtual {v9}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->g()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "descShow":Ljava/lang/String;
    goto :goto_1

    .line 66
    .end local v8    # "descShow":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, ""

    .restart local v8    # "descShow":Ljava/lang/String;
    goto :goto_1

    .line 81
    .end local v8    # "descShow":Ljava/lang/String;
    .end local v9    # "bookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_5

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 83
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :goto_2
    new-instance v4, Lafk$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lafk$2;-><init>(Lafk;Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .end local v13    # "i":I
    .end local v14    # "listenMessage":Lafj;
    .end local v15    # "resultLayout":Landroid/widget/LinearLayout;
    .end local v16    # "resultLine":Landroid/view/View;
    .end local v17    # "resultLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    .end local v18    # "resultMore":Landroid/widget/TextView;
    .end local v19    # "resultView":Landroid/widget/LinearLayout;
    .end local v20    # "searchName":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 87
    .restart local v13    # "i":I
    .restart local v14    # "listenMessage":Lafj;
    .restart local v15    # "resultLayout":Landroid/widget/LinearLayout;
    .restart local v16    # "resultLine":Landroid/view/View;
    .restart local v17    # "resultLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    .restart local v18    # "resultMore":Landroid/widget/TextView;
    .restart local v19    # "resultView":Landroid/widget/LinearLayout;
    .restart local v20    # "searchName":Ljava/lang/String;
    :cond_5
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 97
    .end local v13    # "i":I
    :cond_6
    const/16 v4, 0x8

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 29
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Lafk;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 125
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 37
    instance-of v0, p1, Lafj;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 29
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Lafk;->a(Laee;)Z

    move-result v0

    return v0
.end method
