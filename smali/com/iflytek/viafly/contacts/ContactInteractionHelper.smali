.class public Lcom/iflytek/viafly/contacts/ContactInteractionHelper;
.super Ljava/lang/Object;
.source "ContactInteractionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/business/speech/ResultGrammarData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Intent;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->m:Z

    .line 100
    iput-object p1, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    .line 101
    return-void
.end method

.method private a(Laaw;)Laaw;
    .locals 1
    .param p1, "result"    # Laaw;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Laaw;->a(Ljava/util/HashMap;)V

    .line 1494
    invoke-direct {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laaw;->a([Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Laaw;->a(Landroid/content/Intent;)V

    .line 1496
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Laaw;->a(Ljava/util/List;)V

    .line 1497
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    invoke-static {v0}, Labb;->c(Ljava/util/List;)V

    .line 1498
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Laaw;->a(Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->h:Ljava/lang/String;

    invoke-static {v0}, Lpz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->h:Ljava/lang/String;

    .line 1500
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Laaw;->b(Ljava/lang/String;)V

    .line 1501
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Laaw;->c(Ljava/lang/String;)V

    .line 1502
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Laaw;->d(Ljava/lang/String;)V

    .line 1503
    return-object p1
.end method

.method public static a(Lcom/iflytek/base/contacts/entities/ContactSet;)Lcom/iflytek/base/contacts/entities/ContactInfo;
    .locals 5
    .param p0, "set"    # Lcom/iflytek/base/contacts/entities/ContactSet;

    .prologue
    const/4 v2, 0x0

    .line 117
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 137
    :cond_1
    :goto_0
    return-object v0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v3}, Lhc;->a(Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-result-object v0

    .line 123
    .local v0, "info":Lcom/iflytek/base/contacts/entities/ContactInfo;
    invoke-virtual {p0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v1

    .line 124
    .local v1, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_3

    .line 125
    invoke-static {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->b(Lcom/iflytek/base/contacts/entities/ContactSet;)Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    :cond_4
    move-object v0, v2

    .line 129
    goto :goto_0

    .line 131
    :cond_5
    iget-object v2, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    :cond_6
    invoke-virtual {p0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhc;->b(Ljava/lang/String;)V

    .line 137
    invoke-static {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->b(Lcom/iflytek/base/contacts/entities/ContactSet;)Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "showNumber"    # Ljava/lang/String;

    .prologue
    .line 1609
    if-nez p1, :cond_0

    .line 1610
    const/4 p1, 0x0

    .line 1619
    .end local p1    # "showNumber":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1614
    .restart local p1    # "showNumber":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string/jumbo v3, "[`\\u0026\\u005E\\u4e00-\\u9fa5]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1615
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1616
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 1617
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 1618
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "cursor"    # I
    .param p3, "size"    # I

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .local v0, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_1

    .line 554
    iget-object v1, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v2, 0x7f0c0370

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v3, 0x7f0c035f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 560
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 562
    .end local p1    # "content":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "specNumber"    # Ljava/lang/String;

    .prologue
    .line 933
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 943
    .end local p0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 936
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    if-nez p0, :cond_2

    .line 937
    const/4 p0, 0x0

    goto :goto_0

    .line 939
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    const-string/jumbo v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;
    .locals 9
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 846
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 847
    const/4 v4, 0x0

    .line 923
    :goto_0
    return-object v4

    .line 850
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 852
    .local v3, "subNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 853
    .local v2, "specNumber":Ljava/lang/String;
    invoke-static {p2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 854
    invoke-static {p2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 855
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 858
    :cond_1
    sget-object v4, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$1;->a:[I

    invoke-virtual {p3}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 923
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 860
    :pswitch_0
    const-string/jumbo v4, "ContactInteractionHelper"

    const-string/jumbo v5, "prefix_high_light"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const-string/jumbo v4, "`"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-static {p2, v2}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 866
    :pswitch_1
    const-string/jumbo v4, "ContactInteractionHelper"

    const-string/jumbo v5, "front_three_num_high_light"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    if-eqz p2, :cond_2

    .line 868
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_4

    .line 869
    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 873
    :goto_2
    if-eqz p1, :cond_3

    .line 874
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_3
    const-string/jumbo v4, "`"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .local v1, "showNumberBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 871
    .end local v1    # "showNumberBuilder":Ljava/lang/StringBuilder;
    :cond_4
    move-object v3, p2

    goto :goto_2

    .line 887
    :pswitch_2
    const-string/jumbo v4, "ContactInteractionHelper"

    const-string/jumbo v5, "end_four_num_high_light"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    if-eqz p1, :cond_5

    .line 889
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    :cond_5
    if-eqz p2, :cond_2

    .line 892
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_7

    .line 893
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 897
    :goto_3
    const-string/jumbo v4, "`"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .restart local v1    # "showNumberBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_6

    .line 900
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 895
    .end local v1    # "showNumberBuilder":Ljava/lang/StringBuilder;
    :cond_7
    move-object v3, p2

    goto :goto_3

    .line 909
    :pswitch_3
    const-string/jumbo v4, "ContactInteractionHelper"

    const-string/jumbo v5, "full_num_high_light"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    if-eqz p1, :cond_8

    .line 911
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    :cond_8
    if-eqz p2, :cond_2

    .line 914
    const-string/jumbo v4, "`"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-static {p2, v2}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 858
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v0, "sortContactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 536
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_0
    :goto_0
    return-object v0

    .line 540
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;Z)V
    .locals 16
    .param p2, "isRetryContent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k(Ljava/util/List;)I

    move-result v1

    .line 696
    .local v1, "count":I
    const/4 v4, 0x1

    .line 697
    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_7

    .line 698
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 699
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 700
    .local v6, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-static {v12, v6}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 701
    .local v5, "location":Ljava/lang/String;
    const/4 v11, 0x0

    .line 702
    .local v11, "subNumber":Ljava/lang/String;
    const/4 v7, 0x0

    .line 703
    .local v7, "resultContent":Ljava/lang/String;
    const/4 v10, 0x0

    .line 704
    .local v10, "showContent":Ljava/lang/String;
    const/4 v8, 0x0

    .line 706
    .local v8, "retryResultContent":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_5

    const/4 v12, 0x0

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(IILjava/util/List;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 707
    invoke-static {v6}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 711
    :goto_2
    if-eqz v5, :cond_2

    .line 712
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 713
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 714
    move-object v10, v5

    .line 716
    :cond_2
    new-instance v2, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v12, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_full:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v2, v6, v12}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 717
    .local v2, "fullData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v12, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v9, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v12, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_section:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v9, v6, v12}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 719
    .local v9, "sectionData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    if-eqz v5, :cond_3

    .line 720
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v15, 0x7f0c0373

    .line 721
    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 720
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v15, 0x7f0c0372

    .line 723
    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 722
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v12, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v12, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v12, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v15, 0x7f0c0372

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    sget-object v13, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->front_three_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6, v13}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    if-eqz p2, :cond_4

    .line 732
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v1

    if-ge v4, v12, :cond_6

    .line 733
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v14, 0x7f0c0372

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v14, 0x7f0c035f

    .line 735
    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    .line 741
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 697
    .end local v2    # "fullData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v5    # "location":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "resultContent":Ljava/lang/String;
    .end local v8    # "retryResultContent":Ljava/lang/String;
    .end local v9    # "sectionData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v10    # "showContent":Ljava/lang/String;
    .end local v11    # "subNumber":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 709
    .restart local v5    # "location":Ljava/lang/String;
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "resultContent":Ljava/lang/String;
    .restart local v8    # "retryResultContent":Ljava/lang/String;
    .restart local v10    # "showContent":Ljava/lang/String;
    .restart local v11    # "subNumber":Ljava/lang/String;
    :cond_5
    move-object v11, v6

    goto/16 :goto_2

    .line 737
    .restart local v2    # "fullData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .restart local v9    # "sectionData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v14, 0x7f0c0370

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v14, 0x7f0c0372

    .line 739
    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    goto :goto_3

    .line 745
    .end local v2    # "fullData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v5    # "location":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "resultContent":Ljava/lang/String;
    .end local v8    # "retryResultContent":Ljava/lang/String;
    .end local v9    # "sectionData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v10    # "showContent":Ljava/lang/String;
    .end local v11    # "subNumber":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 746
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-static {v12}, Lpz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private a([Ljava/lang/String;)V
    .locals 3
    .param p1, "tmpGrammars"    # [Ljava/lang/String;

    .prologue
    .line 1555
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e:Landroid/content/Intent;

    .line 1556
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e:Landroid/content/Intent;

    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1573
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e:Landroid/content/Intent;

    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1575
    const-string/jumbo v0, "ContactInteractionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set speech intent | focus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e:Landroid/content/Intent;

    const-string/jumbo v1, "local_scene"

    iget-object v2, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e:Landroid/content/Intent;

    const-string/jumbo v1, "local_lexicon_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    return-void
.end method

.method private a(IILjava/util/List;)Z
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 1438
    if-nez p3, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return v2

    .line 1441
    :cond_1
    if-gt p1, p2, :cond_0

    .line 1444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    .local v1, "numberTmpList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1446
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, p2, :cond_0

    .line 1449
    invoke-static {v0}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1450
    invoke-static {v0}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1451
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1454
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1459
    .end local v0    # "number":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private b()Laaw;
    .locals 12

    .prologue
    .line 226
    new-instance v5, Laaw;

    invoke-direct {v5}, Laaw;-><init>()V

    .line 227
    .local v5, "result":Laaw;
    const-string/jumbo v8, ""

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 228
    const-string/jumbo v8, ""

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->h:Ljava/lang/String;

    .line 231
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k(Ljava/util/List;)I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 232
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v9, 0x7f0c036e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "mobileNumberType":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 234
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_type:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v8, v9}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 235
    .local v0, "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 236
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c036d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c036e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c036f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "location":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v9, 0x7f0c0350

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c0350

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    .line 243
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v11, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    .line 242
    invoke-direct {p0, v10, v8, v11}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c0350

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v9, 0x7f0c0351

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    .end local v2    # "location":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 247
    .restart local v2    # "location":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 248
    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v10, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v2, v8, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    :cond_1
    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    const-string/jumbo v10, ""

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v11, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v10, v8, v11}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    .end local v2    # "location":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c038c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c038d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c038e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c038c

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    .line 258
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v11, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    .line 257
    invoke-direct {p0, v10, v8, v11}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    :cond_3
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    .line 262
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    .line 263
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c035f

    .line 264
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c0370

    .line 265
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c038c

    .line 266
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 267
    const/4 v8, 0x1

    iput v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l:I

    .line 394
    .end local v1    # "i":I
    .end local v3    # "mobileNumberType":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    invoke-static {v8}, Lpz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->h:Ljava/lang/String;

    .line 395
    invoke-direct {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f()V

    .line 396
    invoke-direct {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a([Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, v5}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Laaw;)Laaw;

    move-result-object v8

    return-object v8

    .line 270
    :cond_4
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->i(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 272
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_6

    .line 273
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 274
    .local v4, "number":Ljava/lang/String;
    const/4 v6, 0x0

    .line 275
    .local v6, "subNumber":Ljava/lang/String;
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-static {v8, v4}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .restart local v2    # "location":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_5

    .line 277
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 281
    :goto_4
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v8, Lcom/iflytek/framework/business/speech/ResultGrammarType;->location:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v4, v8}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 282
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0372

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0373

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0372

    .line 287
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c035f

    .line 288
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 286
    invoke-direct {p0, v9, v1, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 289
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    sget-object v9, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v2, v4, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 279
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    :cond_5
    move-object v6, v4

    goto/16 :goto_4

    .line 291
    .end local v2    # "location":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v6    # "subNumber":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x2

    iput v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l:I

    goto/16 :goto_2

    .line 294
    .end local v1    # "i":I
    :cond_7
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k(Ljava/util/List;)I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 295
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d(Ljava/util/List;)V

    .line 296
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->j:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c038f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 297
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->h:Ljava/lang/String;

    .line 298
    const/4 v8, 0x6

    iput v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l:I

    goto/16 :goto_2

    .line 301
    :cond_8
    const/4 v8, 0x0

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v8, v9, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(IILjava/util/List;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 303
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_b

    .line 304
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 305
    .restart local v4    # "number":Ljava/lang/String;
    const/4 v6, 0x0

    .line 306
    .restart local v6    # "subNumber":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_9

    .line 307
    invoke-static {v4}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 311
    :goto_6
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v8, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_section:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v4, v8}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 312
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0372

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0373

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-static {v8, v4}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .restart local v2    # "location":Ljava/lang/String;
    if-nez v2, :cond_a

    .line 319
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    const/4 v9, 0x0

    sget-object v10, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->front_three_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v9, v4, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0372

    .line 325
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c035f

    .line 326
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 324
    invoke-direct {p0, v9, v1, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 309
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v2    # "location":Ljava/lang/String;
    :cond_9
    move-object v6, v4

    goto/16 :goto_6

    .line 321
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .restart local v2    # "location":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    sget-object v9, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->front_three_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v2, v4, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 328
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v2    # "location":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v6    # "subNumber":Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    invoke-static {v8}, Lpz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 329
    const/4 v8, 0x4

    iput v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l:I

    goto/16 :goto_2

    .line 332
    .end local v1    # "i":I
    :cond_c
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->h(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 334
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_f

    .line 335
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 336
    .restart local v4    # "number":Ljava/lang/String;
    const/4 v6, 0x0

    .line 337
    .restart local v6    # "subNumber":Ljava/lang/String;
    invoke-static {v4}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 338
    .local v7, "tmp":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_d

    .line 339
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 343
    :goto_9
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v8, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_section:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v4, v8}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 344
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0371

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0371

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0367

    .line 347
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 346
    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-static {v8, v4}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .restart local v2    # "location":Ljava/lang/String;
    if-nez v2, :cond_e

    .line 351
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    const/4 v9, 0x0

    sget-object v10, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->end_four_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v9, v4, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :goto_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0371

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0367

    .line 357
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c035f

    .line 358
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 356
    invoke-direct {p0, v9, v1, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 341
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v2    # "location":Ljava/lang/String;
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_9

    .line 353
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .restart local v2    # "location":Ljava/lang/String;
    :cond_e
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    sget-object v9, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->end_four_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v2, v4, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 360
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v2    # "location":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v6    # "subNumber":Ljava/lang/String;
    .end local v7    # "tmp":Ljava/lang/String;
    :cond_f
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    invoke-static {v8}, Lpz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 361
    const/4 v8, 0x5

    iput v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l:I

    goto/16 :goto_2

    .line 366
    .end local v1    # "i":I
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_b
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_13

    .line 367
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 368
    .restart local v4    # "number":Ljava/lang/String;
    const/4 v6, 0x0

    .line 369
    .restart local v6    # "subNumber":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_11

    .line 370
    const/4 v8, 0x3

    const/4 v9, 0x7

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 374
    :goto_c
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v8, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_full:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v4, v8}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 375
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0374

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0374

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0367

    .line 379
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 378
    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-static {v8, v4}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .restart local v2    # "location":Ljava/lang/String;
    if-nez v2, :cond_12

    .line 383
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    const/4 v9, 0x0

    sget-object v10, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->full_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v9, v4, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 372
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v2    # "location":Ljava/lang/String;
    :cond_11
    move-object v6, v4

    goto :goto_c

    .line 386
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .restart local v2    # "location":Ljava/lang/String;
    :cond_12
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    sget-object v9, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->full_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v2, v4, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 391
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v2    # "location":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v6    # "subNumber":Ljava/lang/String;
    :cond_13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->j:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c038f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 392
    const/4 v8, 0x6

    iput v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l:I

    goto/16 :goto_2
.end method

.method public static b(Lcom/iflytek/base/contacts/entities/ContactSet;)Lcom/iflytek/base/contacts/entities/ContactInfo;
    .locals 6
    .param p0, "set"    # Lcom/iflytek/base/contacts/entities/ContactSet;

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, "priorNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v1

    .line 151
    .local v1, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, "tNumber":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 153
    move-object v2, v3

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {v3}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    move-object v2, v3

    .line 160
    .end local v3    # "tNumber":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    .line 161
    const/4 v0, 0x0

    .line 166
    :goto_1
    return-object v0

    .line 163
    :cond_3
    new-instance v0, Lcom/iflytek/base/contacts/entities/ContactInfo;

    invoke-direct {v0}, Lcom/iflytek/base/contacts/entities/ContactInfo;-><init>()V

    .line 164
    .local v0, "info":Lcom/iflytek/base/contacts/entities/ContactInfo;
    invoke-virtual {p0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    .line 165
    iput-object v2, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "showList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 597
    :cond_0
    const/4 v1, 0x0

    .line 612
    :goto_0
    return-object v1

    .line 599
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v1, "newShowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 601
    .local v0, "mobileContent":Ljava/lang/String;
    const/4 v3, 0x0

    .line 602
    .local v3, "telephoneContent":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 603
    .local v2, "showContent":Ljava/lang/String;
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v6, 0x7f0c038c

    .line 604
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 603
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 605
    move-object v3, v2

    goto :goto_1

    .line 607
    :cond_2
    move-object v0, v2

    goto :goto_1

    .line 610
    .end local v2    # "showContent":Ljava/lang/String;
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c()Laaw;
    .locals 12

    .prologue
    .line 406
    new-instance v6, Laaw;

    invoke-direct {v6}, Laaw;-><init>()V

    .line 407
    .local v6, "result":Laaw;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->j:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c0390

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    .line 408
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c0391

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 409
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->h:Ljava/lang/String;

    .line 410
    const-string/jumbo v8, ""

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    .line 411
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v4, "mobileNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k(Ljava/util/List;)I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 420
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d(Ljava/util/List;)V

    .line 421
    const/4 v8, 0x6

    iput v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l:I

    .line 527
    :goto_0
    invoke-direct {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f()V

    .line 528
    invoke-direct {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a([Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, v6}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Laaw;)Laaw;

    move-result-object v8

    return-object v8

    .line 423
    :cond_0
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 424
    const/4 v2, 0x0

    .line 426
    .local v2, "isGetRetryContent":Z
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 429
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f(Ljava/util/List;)V

    .line 433
    :cond_1
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->i(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-direct {p0, v8, v9, v4}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(IILjava/util/List;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 434
    :cond_2
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k(Ljava/util/List;)I

    move-result v9

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 435
    :cond_3
    const/4 v2, 0x1

    .line 438
    :cond_4
    if-nez v2, :cond_5

    .line 439
    const-string/jumbo v8, ""

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    .line 442
    :cond_5
    const/4 v8, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 443
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 444
    .local v5, "number":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v8, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_type:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v5, v8}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 445
    .local v0, "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c036d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c036e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c036f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-static {v8, v5}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "location":Ljava/lang/String;
    if-nez v3, :cond_6

    .line 450
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v10, 0x7f0c036d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v9, v5, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :goto_1
    const/4 v8, 0x6

    iput v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l:I

    goto/16 :goto_0

    .line 453
    :cond_6
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    sget-object v9, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v3, v5, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 461
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v3    # "location":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->j(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 463
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_c

    .line 464
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 465
    .restart local v5    # "number":Ljava/lang/String;
    const/4 v7, 0x0

    .line 467
    .local v7, "subNumber":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_a

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-direct {p0, v8, v9, v4}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(IILjava/util/List;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 468
    invoke-static {v5}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 472
    :goto_3
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v8, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_section:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v5, v8}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 473
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-static {v8, v5}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    .restart local v3    # "location":Ljava/lang/String;
    if-nez v3, :cond_b

    .line 475
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    const/4 v9, 0x0

    sget-object v10, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->front_three_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v9, v5, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :goto_4
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0372

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0373

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    if-eqz v2, :cond_9

    .line 489
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0372

    .line 490
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c035f

    .line 491
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 492
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    .line 489
    invoke-direct {p0, v9, v1, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    .line 463
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 470
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v3    # "location":Ljava/lang/String;
    :cond_a
    move-object v7, v5

    goto/16 :goto_3

    .line 478
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .restart local v3    # "location":Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    sget-object v9, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->front_three_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v3, v5, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 495
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v3    # "location":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v7    # "subNumber":Ljava/lang/String;
    :cond_c
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-static {v8}, Lpz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    .line 496
    const/4 v8, 0x4

    iput v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l:I

    goto/16 :goto_0

    .line 499
    .end local v1    # "i":I
    :cond_d
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->i(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 500
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_f

    .line 501
    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 502
    .restart local v3    # "location":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/iflytek/framework/business/speech/ResultGrammarType;->location:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v8, v9}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 503
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0372

    .line 505
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 504
    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0373

    .line 508
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 507
    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v10, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v3, v8, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    if-eqz v2, :cond_e

    .line 513
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c0372

    .line 514
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v11, 0x7f0c035f

    .line 515
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    .line 513
    invoke-direct {p0, v9, v1, v10}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    .line 500
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 518
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v3    # "location":Ljava/lang/String;
    :cond_f
    const/4 v8, 0x6

    iput v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l:I

    goto/16 :goto_0

    .line 522
    .end local v1    # "i":I
    :cond_10
    invoke-direct {p0, v4, v2}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/util/List;Z)V

    .line 523
    const/4 v8, 0x6

    iput v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l:I

    goto/16 :goto_0
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 622
    :cond_0
    const/4 v0, 0x0

    .line 630
    :cond_1
    return-object v0

    .line 624
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v0, "mobileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 626
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 627
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private d()Laaw;
    .locals 13

    .prologue
    const v12, 0x7f0c0363

    const v8, 0x7f0c035f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 951
    new-instance v3, Laaw;

    invoke-direct {v3}, Laaw;-><init>()V

    .line 952
    .local v3, "result":Laaw;
    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->i:Ljava/lang/String;

    const-string/jumbo v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 953
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v7, 0x7f0c0369

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    .line 954
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v7, 0x7f0c0357

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    .line 955
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    .line 956
    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 985
    :goto_0
    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    iput-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->h:Ljava/lang/String;

    .line 986
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v7, 0x7f0c035b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v7, 0x7f0c0394

    .line 987
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    .line 988
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 989
    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 990
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v6, 0x7f0c033f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 992
    .local v4, "tmp":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_1

    .line 993
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 998
    .local v0, "context":Landroid/content/Context;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v7, 0x7f0c0370

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    .line 999
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, ""

    aput-object v7, v6, v10

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    .line 988
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 978
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v7, 0x7f0c0369

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    .line 979
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v7, 0x7f0c0368

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    .line 980
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    .line 981
    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 1001
    .restart local v1    # "i":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "tmp":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    .line 1006
    .restart local v0    # "context":Landroid/content/Context;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v8, 0x7f0c0394

    .line 1007
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 1006
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    goto :goto_2

    .line 1010
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g()V

    .line 1011
    invoke-direct {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a([Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Laaw;)Laaw;

    move-result-object v5

    return-object v5
.end method

.method private d(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v9, 0x7f0c0372

    .line 637
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->e(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 643
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f(Ljava/util/List;)V

    goto :goto_0

    .line 647
    :cond_2
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->i(Ljava/util/List;)Z

    move-result v2

    .line 648
    .local v2, "isRepeatLocation":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 649
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 650
    .local v4, "number":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-static {v5, v4}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 651
    .local v3, "location":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v5, Lcom/iflytek/framework/business/speech/ResultGrammarType;->location:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v4, v5}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 652
    .local v0, "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    .line 653
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 652
    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v8, 0x7f0c0373

    .line 656
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 655
    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    sget-object v6, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-direct {p0, v3, v4, v6}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    if-nez v2, :cond_3

    .line 661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    .line 662
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v8, 0x7f0c035f

    .line 663
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 664
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 661
    invoke-direct {p0, v6, v1, v7}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    .line 648
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method private e(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 675
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v2

    .line 678
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 679
    .local v1, "number":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-static {v4, v1}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "location":Ljava/lang/String;
    if-nez v0, :cond_2

    goto :goto_0

    .line 684
    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private e()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 1016
    iget-object v4, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 1017
    .local v0, "grammars":[Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1018
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1019
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1020
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

    .line 1022
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    iget-object v4, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v5, 0x7f0c0362

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1023
    return-object v0
.end method

.method private f()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 1584
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1585
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1586
    .local v2, "number":Ljava/lang/String;
    new-instance v3, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v6, Lcom/iflytek/framework/business/speech/ResultGrammarType;->serial_number:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v3, v2, v6}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 1587
    .local v3, "numberData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v9, 0x7f0c0395

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1588
    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v9, 0x7f0c0396

    .line 1589
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1587
    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v6, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_full:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v2, v6}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 1592
    .local v0, "fullData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    invoke-static {v2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_1

    .line 1594
    invoke-static {v2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1595
    .local v5, "subNumber":Ljava/lang/String;
    new-instance v4, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v6, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_section:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v4, v2, v6}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 1600
    .local v4, "sectionData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1601
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    :cond_0
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u53f7\u7801"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    .end local v4    # "sectionData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v5    # "subNumber":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1606
    .end local v0    # "fullData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "numberData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    :cond_2
    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v13, 0x7f0c0372

    const/4 v12, 0x2

    const v11, 0x7f0c0392

    const/4 v10, 0x0

    .line 780
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    const/4 v4, 0x0

    .line 784
    .local v4, "resultContent":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k(Ljava/util/List;)I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 785
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 786
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 787
    .local v5, "telephoneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_type:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v6, v7}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 788
    .local v0, "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 792
    .local v3, "location":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 793
    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 794
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v9, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    .line 793
    invoke-direct {p0, v8, v6, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    :goto_1
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 801
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v12, :cond_0

    .line 802
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k(Ljava/util/List;)I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 803
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v6, v2, :cond_3

    .line 804
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v8, 0x7f0c0370

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    .line 805
    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    goto/16 :goto_0

    .line 796
    .end local v2    # "index":I
    :cond_2
    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    .line 797
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v8, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    .line 796
    invoke-direct {p0, v3, v6, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 807
    .restart local v2    # "index":I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v8, 0x7f0c035f

    .line 808
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->k:Ljava/lang/String;

    goto/16 :goto_0

    .line 813
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v2    # "index":I
    .end local v3    # "location":Ljava/lang/String;
    .end local v5    # "telephoneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 814
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 815
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 816
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_type:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v0, v6, v7}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 817
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    .restart local v3    # "location":Ljava/lang/String;
    if-nez v3, :cond_7

    .line 823
    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 824
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v9, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    .line 823
    invoke-direct {p0, v8, v6, v9}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    .end local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v3    # "location":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v12, v6, :cond_6

    .line 831
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v8, 0x7f0c0390

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    .line 832
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v8, 0x7f0c0391

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    .line 833
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->f:Ljava/lang/String;

    iput-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->h:Ljava/lang/String;

    .line 813
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 826
    .restart local v0    # "data":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .restart local v3    # "location":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    .line 827
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v8, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    .line 826
    invoke-direct {p0, v3, v6, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private g()V
    .locals 8

    .prologue
    .line 1627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1628
    iget-object v4, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1629
    .local v1, "name":Ljava/lang/String;
    new-instance v3, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v4, Lcom/iflytek/framework/business/speech/ResultGrammarType;->serial_number:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v3, v1, v4}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 1630
    .local v3, "serialData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v4, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v7, 0x7f0c0395

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1631
    invoke-static {v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    const v7, 0x7f0c0396

    .line 1632
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1630
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    new-instance v2, Lcom/iflytek/framework/business/speech/ResultGrammarData;

    sget-object v4, Lcom/iflytek/framework/business/speech/ResultGrammarType;->name:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-direct {v2, v1, v4}, Lcom/iflytek/framework/business/speech/ResultGrammarData;-><init>(Ljava/lang/String;Lcom/iflytek/framework/business/speech/ResultGrammarType;)V

    .line 1635
    .local v2, "nameData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    iget-object v4, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1637
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "nameData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    .end local v3    # "serialData":Lcom/iflytek/framework/business/speech/ResultGrammarData;
    :cond_0
    return-void
.end method

.method private g(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1419
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return v1

    .line 1422
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1423
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1424
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private h(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 1468
    if-nez p1, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return v2

    .line 1471
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v1, "numberTmpList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1473
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    .line 1476
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1477
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1480
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1484
    .end local v0    # "number":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private i(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1512
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 1527
    :cond_1
    :goto_0
    return v3

    .line 1515
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1516
    .local v1, "locationSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1517
    .local v2, "number":Ljava/lang/String;
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-static {v6, v2}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1518
    .local v0, "location":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1521
    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1523
    :cond_4
    if-eqz v0, :cond_3

    .line 1524
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "location":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :cond_5
    move v3, v4

    .line 1527
    goto :goto_0
.end method

.method private j(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1536
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 1547
    :cond_1
    :goto_0
    return v3

    .line 1539
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1540
    .local v1, "locationSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1541
    .local v2, "number":Ljava/lang/String;
    iget-object v6, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a:Landroid/content/Context;

    invoke-static {v6, v2}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1542
    .local v0, "location":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1544
    .end local v0    # "location":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    if-eq v3, v5, :cond_1

    move v3, v4

    .line 1547
    goto :goto_0
.end method

.method private k(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1683
    .local p1, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1684
    :cond_0
    const/4 v0, 0x0

    .line 1692
    :cond_1
    return v0

    .line 1686
    :cond_2
    const/4 v0, 0x0

    .line 1687
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1688
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private l(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1701
    .local p1, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1702
    :cond_0
    const/4 v1, 0x0

    .line 1710
    :cond_1
    return-object v1

    .line 1704
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1705
    .local v1, "telephoneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1706
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1707
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()Laaw;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 175
    iget v1, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->b:I

    if-nez v1, :cond_1

    .line 176
    const-string/jumbo v0, "ContactInteractionHelper"

    const-string/jumbo v1, "contact name type"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->d()Laaw;

    move-result-object v0

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->b:I

    if-ne v1, v2, :cond_0

    .line 179
    const-string/jumbo v1, "ContactInteractionHelper"

    const-string/jumbo v2, "contact number type"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c()Laaw;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->b()Laaw;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "showList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 756
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    .line 757
    :cond_0
    const/4 v1, 0x0

    .line 772
    :cond_1
    return-object v1

    .line 759
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 761
    .local v4, "showContent":Ljava/lang/String;
    const-string/jumbo v6, "`"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "numbers":[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v6, v3

    if-le v6, v7, :cond_3

    .line 763
    aget-object v2, v3, v7

    .line 765
    .local v2, "number":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 766
    .local v0, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v0, p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0, v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->f(Ljava/lang/String;)V

    .line 769
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .param p1, "focus"    # Ljava/lang/String;
    .param p2, "contactName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p4, "contactInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput p3, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->b:I

    .line 105
    iput-object p4, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c:Ljava/util/List;

    .line 106
    iput-object p2, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->j:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->g:Ljava/util/List;

    .line 108
    iput-object p1, p0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->i:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public c(Lcom/iflytek/base/contacts/entities/ContactSet;)Ljava/util/List;
    .locals 2
    .param p1, "contactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1668
    if-nez p1, :cond_0

    .line 1669
    const/4 v0, 0x0

    .line 1674
    :goto_0
    return-object v0

    .line 1672
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1673
    .local v0, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/List;

    .line 1674
    .restart local v0    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method
