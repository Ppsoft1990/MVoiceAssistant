.class final Lhb;
.super Ljava/lang/Object;
.source "ContactAccessor.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;

.field private d:Landroid/content/Context;

.field private e:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhb;->c:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lhb;->d:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lhb;->d:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numbers"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 1009
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1011
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v8, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1013
    .local v2, "rawContactUri":Landroid/net/Uri;
    if-nez v2, :cond_1

    move-wide v4, v6

    .line 1037
    .end local v2    # "rawContactUri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-wide v4

    .line 1016
    .restart local v2    # "rawContactUri":Landroid/net/Uri;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1019
    .local v4, "rawContactsId":J
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1020
    const-string/jumbo v8, "raw_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1021
    const-string/jumbo v8, "mimetype"

    const-string/jumbo v9, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string/jumbo v8, "data2"

    invoke-virtual {v3, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v8, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1025
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, p2

    if-ge v1, v8, :cond_0

    .line 1027
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1028
    const-string/jumbo v8, "raw_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1029
    const-string/jumbo v8, "mimetype"

    const-string/jumbo v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string/jumbo v8, "data1"

    aget-object v9, p2, v1

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string/jumbo v8, "data2"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    iget-object v8, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1035
    .end local v1    # "i":I
    .end local v2    # "rawContactUri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "rawContactsId":J
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v4, v6

    .line 1037
    goto :goto_0
.end method

.method protected a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 972
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 974
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v6, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 976
    .local v2, "rawContactUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 979
    .local v4, "rawContactsId":J
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 980
    const-string/jumbo v6, "raw_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 981
    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string/jumbo v6, "data2"

    invoke-virtual {v3, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v6, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 985
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 987
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 988
    const-string/jumbo v6, "raw_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 989
    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string/jumbo v7, "data1"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string/jumbo v6, "data2"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    iget-object v6, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 995
    .end local v1    # "i":I
    .end local v2    # "rawContactUri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "rawContactsId":J
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 997
    const/4 v2, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v2
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 369
    const/4 v8, 0x0

    .line 370
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 371
    .local v6, "contactId":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "data1 like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "contactWhere":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 375
    :try_start_0
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryContactId----id is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_0
    :goto_0
    invoke-static {v8}, Lazj;->a(Landroid/database/Cursor;)V

    move-object v7, v6

    .end local v6    # "contactId":Ljava/lang/String;
    .local v7, "contactId":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 377
    .end local v7    # "contactId":Ljava/lang/String;
    .restart local v6    # "contactId":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lhi;->c:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 380
    if-nez v8, :cond_2

    .line 381
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryContactId--------cursor is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v9

    .line 392
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    invoke-static {v8}, Lazj;->a(Landroid/database/Cursor;)V

    move-object v7, v6

    .end local v6    # "contactId":Ljava/lang/String;
    .restart local v7    # "contactId":Ljava/lang/String;
    goto :goto_1

    .line 382
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "contactId":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 383
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryContactId--------cursor count is 0"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lazj;->a(Landroid/database/Cursor;)V

    throw v0

    .line 385
    :cond_3
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    goto :goto_0
.end method

.method protected a(Z)Ljava/lang/String;
    .locals 1
    .param p1, "fuzzyFlag"    # Z

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    const-string/jumbo v0, "display_name like ?"

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "display_name = ?"

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f0c0152

    .line 1042
    const/16 v1, 0x64

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lhb;->e:[Ljava/lang/String;

    .line 1043
    iget-object v1, p0, Lhb;->e:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1044
    iget-object v1, p0, Lhb;->e:[Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0c014f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1045
    iget-object v1, p0, Lhb;->e:[Ljava/lang/String;

    const/4 v2, 0x2

    const v3, 0x7f0c0151

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1046
    iget-object v1, p0, Lhb;->e:[Ljava/lang/String;

    const/4 v2, 0x3

    const v3, 0x7f0c0154

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1047
    iget-object v1, p0, Lhb;->e:[Ljava/lang/String;

    const/4 v2, 0x4

    const v3, 0x7f0c0155

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1048
    iget-object v1, p0, Lhb;->e:[Ljava/lang/String;

    const/4 v2, 0x5

    const v3, 0x7f0c0150

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1049
    iget-object v1, p0, Lhb;->e:[Ljava/lang/String;

    const/4 v2, 0x6

    const v3, 0x7f0c014d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1050
    iget-object v1, p0, Lhb;->e:[Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1051
    iget-object v1, p0, Lhb;->e:[Ljava/lang/String;

    const/16 v2, 0x9

    const v3, 0x7f0c0153

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1052
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lhb;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1053
    iget-object v1, p0, Lhb;->e:[Ljava/lang/String;

    const v2, 0x7f0c014e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 602
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 603
    .local v1, "insertUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.INSERT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 604
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 605
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    :cond_0
    if-eqz p2, :cond_1

    .line 608
    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    :cond_1
    const-string/jumbo v3, "phone_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    const/high16 v3, 0x10080000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 614
    iget-object v3, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .end local v1    # "insertUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(JJ)[B
    .locals 9
    .param p1, "photoId"    # J
    .param p3, "contactId"    # J

    .prologue
    .line 569
    const/16 v6, 0x200

    new-array v1, v6, [B

    .line 570
    .local v1, "contactTmp":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 571
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 573
    .local v3, "inputStream":Ljava/io/InputStream;
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    .line 574
    :try_start_0
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 576
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lhb;->d:Landroid/content/Context;

    .line 577
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 576
    invoke-static {v6, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 578
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 579
    .local v0, "bytesRead":I
    :goto_0
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 580
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 581
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    .line 584
    .end local v0    # "bytesRead":I
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    if-eqz v3, :cond_1

    .line 585
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 587
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 592
    invoke-static {v3}, Lazj;->a(Ljava/io/InputStream;)V

    :goto_1
    return-object v6

    .line 588
    :catch_0
    move-exception v2

    .line 589
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    const/4 v6, 0x0

    .line 592
    invoke-static {v3}, Lazj;->a(Ljava/io/InputStream;)V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v3}, Lazj;->a(Ljava/io/InputStream;)V

    throw v6
.end method

.method protected a(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fuzzyFlag"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 160
    if-eqz p2, :cond_0

    .line 161
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 163
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactSet;
    .locals 17
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 627
    const/4 v10, 0x0

    .line 628
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 629
    .local v12, "number":Ljava/lang/String;
    const/4 v13, 0x0

    .line 630
    .local v13, "numberType":Ljava/lang/String;
    const/16 v16, 0x0

    .line 631
    .local v16, "type":I
    const/4 v8, 0x0

    .line 632
    .local v8, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v14, "tmpNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 634
    .local v15, "tmpNumberTypeHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lhb;->b()[Ljava/lang/String;

    move-result-object v4

    .line 637
    .local v4, "projection":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lhb;->a()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lhb;->a(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 638
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Lhb;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 637
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 639
    if-nez v10, :cond_0

    .line 640
    const-string/jumbo v2, "ContactAccessor"

    const-string/jumbo v3, "queryContactSet ----------------cursor is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-static {v10}, Lazj;->a(Landroid/database/Cursor;)V

    move-object v9, v8

    :goto_0
    return-object v9

    .line 642
    :cond_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 643
    const-string/jumbo v2, "ContactAccessor"

    const-string/jumbo v3, "queryContactSet ----------------cursor size is 0"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    invoke-static {v10}, Lazj;->a(Landroid/database/Cursor;)V

    move-object v9, v8

    goto :goto_0

    .line 646
    :cond_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 647
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 648
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 649
    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lhb;->e:[Ljava/lang/String;

    aget-object v13, v2, v16

    .line 651
    const-string/jumbo v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 652
    invoke-virtual {v15, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 663
    :catch_0
    move-exception v11

    .line 664
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 665
    const/4 v9, 0x0

    .line 667
    invoke-static {v10}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 658
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_4
    new-instance v9, Lcom/iflytek/base/contacts/entities/ContactSet;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lcom/iflytek/base/contacts/entities/ContactSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 659
    .end local v8    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .local v9, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    :try_start_5
    invoke-virtual {v9, v14}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumbers(Ljava/util/ArrayList;)V

    .line 660
    invoke-virtual {v9, v15}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumberTypeHashMap(Ljava/util/HashMap;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 667
    invoke-static {v10}, Lazj;->a(Landroid/database/Cursor;)V

    move-object v8, v9

    .end local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v8    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_3
    invoke-static {v10}, Lazj;->a(Landroid/database/Cursor;)V

    throw v2

    .end local v8    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v8    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    goto :goto_3

    .line 663
    .end local v8    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    :catch_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v8    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    goto :goto_2
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 405
    const/4 v6, 0x0

    .line 406
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 407
    .local v8, "hasNumberFlag":Z
    const-string/jumbo v3, "display_name = ?"

    .line 408
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 411
    .local v4, "whereParams":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lhi;->g:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 413
    if-nez v6, :cond_0

    .line 414
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "has_contact_number ----------------------- cursor is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    invoke-static {v6}, Lazj;->a(Landroid/database/Cursor;)V

    move v9, v8

    .line 429
    .end local v8    # "hasNumberFlag":Z
    .local v9, "hasNumberFlag":I
    :goto_0
    return v9

    .line 416
    .end local v9    # "hasNumberFlag":I
    .restart local v8    # "hasNumberFlag":Z
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 417
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "has_contact_number ----------------------- cursor size is 0"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    invoke-static {v6}, Lazj;->a(Landroid/database/Cursor;)V

    move v9, v8

    .restart local v9    # "hasNumberFlag":I
    goto :goto_0

    .line 419
    .end local v9    # "hasNumberFlag":I
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    const-string/jumbo v0, "has_phone_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    .line 421
    const/4 v8, 0x1

    .line 427
    :cond_2
    invoke-static {v6}, Lazj;->a(Landroid/database/Cursor;)V

    :goto_1
    move v9, v8

    .line 429
    .restart local v9    # "hasNumberFlag":I
    goto :goto_0

    .line 424
    .end local v9    # "hasNumberFlag":I
    :catch_0
    move-exception v7

    .line 425
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 427
    invoke-static {v6}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lazj;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lhi;->e:[Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 438
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 439
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 440
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 441
    .local v8, "name":Ljava/lang/String;
    sget-object v2, Lhi;->d:[Ljava/lang/String;

    .line 444
    .local v2, "lookUpProjection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 446
    if-nez v6, :cond_1

    .line 447
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v3, "queryContactByNumer--------cursor is null"

    invoke-static {v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :cond_0
    :goto_0
    invoke-static {v6}, Lazj;->a(Landroid/database/Cursor;)V

    .line 459
    :goto_1
    return-object v8

    .line 448
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 449
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v3, "queryContactByNumer--------cursor count is 0"

    invoke-static {v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v7

    .line 454
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 456
    invoke-static {v6}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_1

    .line 450
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lazj;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    const/4 v9, 0x0

    .line 733
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 734
    .local v13, "number":Ljava/lang/String;
    const/4 v14, 0x0

    .line 735
    .local v14, "numberType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 736
    .local v10, "disPlayName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 737
    .local v19, "type":I
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 738
    .local v16, "tmpContactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v8, "contactSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-virtual/range {p0 .. p0}, Lhb;->b()[Ljava/lang/String;

    move-result-object v4

    .line 742
    .local v4, "projection":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lhb;->a()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x1

    .line 743
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lhb;->a(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Lhb;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 742
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 744
    if-nez v9, :cond_0

    .line 745
    const-string/jumbo v2, "ContactAccessor"

    const-string/jumbo v3, "fuzzy_queryContactSet ----------------cursor is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    invoke-static {v9}, Lazj;->a(Landroid/database/Cursor;)V

    :goto_0
    return-object v8

    .line 747
    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 748
    const-string/jumbo v2, "ContactAccessor"

    const-string/jumbo v3, "fuzzy_queryContactSet ----------------cursor size is 0"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    invoke-static {v9}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 751
    :cond_1
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 752
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 753
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 754
    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 755
    const/4 v2, 0x2

    aget-object v2, v4, v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lhb;->e:[Ljava/lang/String;

    aget-object v14, v2, v19

    .line 757
    const-string/jumbo v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 758
    new-instance v15, Lcom/iflytek/base/contacts/entities/ContactSet;

    move-object/from16 v0, p1

    invoke-direct {v15, v10, v0}, Lcom/iflytek/base/contacts/entities/ContactSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .local v15, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v17, "tmpNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 761
    .local v18, "tmpTypeHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumbers(Ljava/util/ArrayList;)V

    .line 764
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumberTypeHashMap(Ljava/util/HashMap;)V

    .line 765
    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    .end local v17    # "tmpNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "tmpTypeHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 791
    .end local v15    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :catch_0
    move-exception v11

    .line 792
    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 795
    invoke-static {v9}, Lazj;->a(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 767
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 768
    .restart local v15    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    const-string/jumbo v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v15}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 769
    invoke-virtual {v15}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-virtual {v15}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumberTypesHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 795
    .end local v15    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :catchall_0
    move-exception v2

    invoke-static {v9}, Lazj;->a(Landroid/database/Cursor;)V

    throw v2

    .line 778
    :cond_4
    :try_start_5
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 779
    .restart local v15    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    if-eqz v15, :cond_5

    .line 780
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 784
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 785
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 788
    :cond_6
    const-string/jumbo v2, "ContactAccessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fuzzy_queryContactSet ----------------cursor size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 795
    invoke-static {v9}, Lazj;->a(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method protected c()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "display_name"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 800
    const/4 v7, 0x0

    .line 801
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 802
    .local v11, "number":Ljava/lang/String;
    const/4 v8, 0x0

    .line 803
    .local v8, "disPlayName":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v6, "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    invoke-virtual {p0}, Lhb;->c()[Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lhb;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    .line 808
    invoke-virtual {p0, v3}, Lhb;->a(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lhb;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "display_name"

    .line 807
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 809
    if-nez v7, :cond_0

    .line 810
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "fuzzyQueryContactItems ----------------cursor is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    invoke-static {v7}, Lazj;->a(Landroid/database/Cursor;)V

    :goto_0
    return-object v6

    .line 812
    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 813
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "fuzzyQueryContactItems ----------------cursor size is 0"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    invoke-static {v7}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 816
    :cond_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 817
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 818
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 819
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 820
    new-instance v10, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v10}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 821
    .local v10, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v10, v8}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v10, v11}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 830
    .end local v10    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :catch_0
    move-exception v9

    .line 831
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 834
    invoke-static {v7}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 827
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    const-string/jumbo v0, "ContactAccessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fuzzyQueryContactItems ----------------cursor size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 834
    invoke-static {v7}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lazj;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected d()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-static {}, Lhl;->k()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sort_key"

    aput-object v1, v0, v4

    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lhl;->k()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 128
    const-string/jumbo v0, "sort_key COLLATE LOCALIZED asc"

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "display_name asc"

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)[B
    .locals 19
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 887
    const/4 v12, 0x0

    .line 888
    .local v12, "cursor":Landroid/database/Cursor;
    const/16 v2, 0x200

    new-array v9, v2, [B

    .line 889
    .local v9, "contactTmp":[B
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 890
    .local v15, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v14, 0x0

    .line 892
    .local v14, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "photo_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "contact_id"

    aput-object v3, v4, v2

    .line 894
    .local v4, "projection":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lhb;->a()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lhb;->a(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 895
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lhb;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 894
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 896
    if-nez v12, :cond_0

    .line 897
    const-string/jumbo v2, "ContactAccessor"

    const-string/jumbo v3, "queryContactPhoto ----------------cursor is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    const/4 v2, 0x0

    .line 926
    invoke-static {v12}, Lazj;->a(Landroid/database/Cursor;)V

    :goto_0
    return-object v2

    .line 899
    :cond_0
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 900
    const-string/jumbo v2, "ContactAccessor"

    const-string/jumbo v3, "queryContactPhoto ----------------cursor size is 0"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    const/4 v2, 0x0

    .line 926
    invoke-static {v12}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 903
    :cond_1
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 904
    const-string/jumbo v2, "photo_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 905
    .local v16, "photoId":J
    const-string/jumbo v2, "contact_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 906
    .local v10, "contactid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_2

    .line 907
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 908
    .local v18, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhb;->d:Landroid/content/Context;

    .line 909
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 908
    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 910
    invoke-virtual {v14, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 911
    .local v8, "bytesRead":I
    :goto_1
    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    .line 912
    const/4 v2, 0x0

    invoke-virtual {v15, v9, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 913
    invoke-virtual {v14, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_1

    .line 917
    .end local v8    # "bytesRead":I
    .end local v10    # "contactid":J
    .end local v16    # "photoId":J
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_2
    if-eqz v14, :cond_3

    .line 918
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 920
    :cond_3
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 926
    invoke-static {v12}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 922
    :catch_0
    move-exception v13

    .line 923
    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 924
    const/4 v2, 0x0

    .line 926
    invoke-static {v12}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v12}, Lazj;->a(Landroid/database/Cursor;)V

    throw v2
.end method

.method protected f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 172
    const/4 v9, 0x0

    .line 173
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 174
    .local v7, "contactName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 175
    .local v6, "contactId":Ljava/lang/String;
    sget-object v2, Lhi;->a:[Ljava/lang/String;

    .line 176
    .local v2, "contactProjection":[Ljava/lang/String;
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 179
    .local v8, "contactNameHashMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lhb;->i()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 180
    if-nez v9, :cond_0

    .line 181
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryContacts------cursor is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    invoke-static {v9}, Lazj;->a(Landroid/database/Cursor;)V

    .line 202
    :goto_1
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryContactNames"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-object v8

    .line 182
    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryContacts------cursor getCount == 0"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v10

    .line 198
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    invoke-static {v9}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_1

    .line 185
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 188
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 189
    if-eqz v7, :cond_2

    .line 190
    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 200
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lazj;->a(Landroid/database/Cursor;)V

    throw v0

    .line 195
    :cond_3
    :try_start_4
    const-string/jumbo v0, "ContactAccessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryContacts------count = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method protected g()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 212
    const/4 v9, 0x0

    .line 213
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 214
    .local v8, "contactNumberHashMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 215
    .local v6, "contactId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 217
    .local v7, "contactNumber":Ljava/lang/String;
    sget-object v2, Lhi;->f:[Ljava/lang/String;

    .line 219
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lhb;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 220
    if-nez v9, :cond_1

    .line 221
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryContactNumbers-----------------------cursor is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    :goto_0
    invoke-static {v9}, Lazj;->a(Landroid/database/Cursor;)V

    .line 241
    :goto_1
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryContactNumbers "

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-object v8

    .line 222
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 223
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryContactNumbers-----------------------cursor count is 0"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v10

    .line 237
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v10}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    invoke-static {v9}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_1

    .line 225
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 229
    if-eqz v7, :cond_3

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 230
    invoke-virtual {v8, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 239
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lazj;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected h()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 250
    const/4 v8, 0x0

    .line 251
    .local v8, "simCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 252
    .local v9, "simName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 253
    .local v10, "simNum":Ljava/lang/String;
    iget-object v0, p0, Lhb;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lhb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 255
    iput-object v1, p0, Lhb;->a:Ljava/util/List;

    .line 257
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhb;->a:Ljava/util/List;

    .line 259
    :try_start_0
    iget-object v0, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://icc/adn"

    .line 260
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lhi;->h:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 259
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 263
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    const-string/jumbo v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 266
    const-string/jumbo v0, "number"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 267
    if-eqz v9, :cond_1

    .line 268
    new-instance v6, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v6}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 269
    .local v6, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v6, v9}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lhb;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v6, v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->a(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v6, v10}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lhb;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v6    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v7

    .line 281
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    invoke-static {v8}, Lazj;->a(Landroid/database/Cursor;)V

    .line 285
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lhb;->a:Ljava/util/List;

    return-object v0

    .line 276
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ContactAccessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySIM------- count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :goto_2
    invoke-static {v8}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_1

    .line 278
    :cond_3
    :try_start_3
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "querySIM-------cursor getCount = 0 or cursor is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 283
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lazj;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected i()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected j()V
    .locals 12

    .prologue
    .line 675
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 676
    iget-object v11, p0, Lhb;->c:Ljava/lang/Object;

    monitor-enter v11

    .line 677
    const/4 v6, 0x0

    .line 678
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lhb;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lhb;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lhb;->b:Ljava/util/HashSet;

    .line 682
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhb;->b:Ljava/util/HashSet;

    .line 683
    const/4 v10, 0x0

    .line 684
    .local v10, "number":Ljava/lang/String;
    const/4 v9, 0x0

    .line 685
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lhb;->c()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 688
    .local v2, "projection":[Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lhb;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lhb;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 690
    if-nez v6, :cond_1

    .line 691
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryAllContactInfo ----------------cursor is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 713
    :goto_0
    :try_start_2
    invoke-static {v6}, Lazj;->a(Landroid/database/Cursor;)V

    .line 715
    :goto_1
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryAllContactInfo"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 717
    return-void

    .line 692
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 693
    const-string/jumbo v0, "ContactAccessor"

    const-string/jumbo v1, "queryAllContactInfo ----------------cursor size is 0"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 710
    :catch_0
    move-exception v7

    .line 711
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 713
    :try_start_5
    invoke-static {v6}, Lazj;->a(Landroid/database/Cursor;)V

    goto :goto_1

    .line 716
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 695
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "number":Ljava/lang/String;
    :cond_2
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 696
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 697
    const/4 v0, 0x0

    aget-object v0, v2, v0

    .line 698
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 697
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 699
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 700
    new-instance v8, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v8}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 701
    .local v8, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v8, v9}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v8, v10}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lhb;->b:Ljava/util/HashSet;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 713
    .end local v8    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {v6}, Lazj;->a(Landroid/database/Cursor;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 707
    :cond_3
    :try_start_8
    const-string/jumbo v0, "ContactAccessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryAllContactInfo ----------------cursor size is = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0
.end method

.method protected k()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    iget-object v1, p0, Lhb;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    :try_start_0
    iget-object v0, p0, Lhb;->b:Ljava/util/HashSet;

    monitor-exit v1

    return-object v0

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
