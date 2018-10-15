.class public Laqe;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MusicHistoryDbHelper.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "viafly_music_history.db"

    sput-object v0, Laqe;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Laqe;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 26
    const-string/jumbo v0, "CREATE TABLE [viafly_music_history] ([id] VARCHAR,[displayName] VARCHAR,[path] VARCHAR,[type] INTEGER,[contentType] VARCHAR,[singer] VARCHAR,[album] VARCHAR,[albumUrl] VARCHAR,[duration] VARCHAR,[coverUrl] VARCHAR,[lrc] TEXT,[shareUrl] VARCHAR,[error] INTEGER,[dataSourceId] VARCHAR,[playTime] INTEGER);"

    iput-object v0, p0, Laqe;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string/jumbo v0, " id, displayName, path, type, contentType, singer, album, albumUrl, duration, coverUrl, lrc, shareUrl, error, dataSourceId, playTime "

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    invoke-virtual {p0}, Laqe;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 99
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "select "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Laqe;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from viafly_music_history where id=? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 101
    .local v2, "musicHistory":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    new-instance v2, Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .end local v2    # "musicHistory":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    invoke-direct {v2}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;-><init>()V

    .line 103
    .restart local v2    # "musicHistory":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->l(Ljava/lang/String;)V

    .line 104
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->m(Ljava/lang/String;)V

    .line 105
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->n(Ljava/lang/String;)V

    .line 106
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->c(I)V

    .line 107
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->e(Ljava/lang/String;)V

    .line 108
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->b(Ljava/lang/String;)V

    .line 109
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(Ljava/lang/String;)V

    .line 110
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->g(Ljava/lang/String;)V

    .line 111
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->c(Ljava/lang/String;)V

    .line 112
    const/16 v3, 0x9

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->f(Ljava/lang/String;)V

    .line 113
    const/16 v3, 0xa

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->d(Ljava/lang/String;)V

    .line 114
    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->h(Ljava/lang/String;)V

    .line 115
    const/16 v3, 0xc

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(I)V

    .line 116
    const/16 v3, 0xd

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->i(Ljava/lang/String;)V

    .line 117
    const/16 v3, 0xe

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(J)V

    goto/16 :goto_0

    .line 119
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 120
    return-object v2
.end method

.method public a(II)Ljava/util/List;
    .locals 12
    .param p1, "pageNum"    # I
    .param p2, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicHistory;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 150
    add-int/lit8 v5, p1, -0x1

    mul-int v2, v5, p2

    .line 151
    .local v2, "index":I
    invoke-virtual {p0}, Laqe;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 152
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicHistory;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "select "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Laqe;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from viafly_music_history order by playTime desc limit ?, ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    new-instance v3, Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    invoke-direct {v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;-><init>()V

    .line 156
    .local v3, "musicHistory":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->l(Ljava/lang/String;)V

    .line 157
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->m(Ljava/lang/String;)V

    .line 158
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->n(Ljava/lang/String;)V

    .line 159
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->c(I)V

    .line 160
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->e(Ljava/lang/String;)V

    .line 161
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->b(Ljava/lang/String;)V

    .line 162
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(Ljava/lang/String;)V

    .line 163
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->g(Ljava/lang/String;)V

    .line 164
    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->c(Ljava/lang/String;)V

    .line 165
    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->f(Ljava/lang/String;)V

    .line 166
    const/16 v5, 0xa

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->d(Ljava/lang/String;)V

    .line 167
    const/16 v5, 0xb

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->h(Ljava/lang/String;)V

    .line 168
    const/16 v5, 0xc

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(I)V

    .line 169
    const/16 v5, 0xd

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->i(Ljava/lang/String;)V

    .line 170
    const/16 v5, 0xe

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(J)V

    .line 171
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 173
    .end local v3    # "musicHistory":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    return-object v4
.end method

.method public a()V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Laqe;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "viafly_music_history"

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public a(I)V
    .locals 6
    .param p1, "limit"    # I

    .prologue
    const/4 v5, 0x1

    .line 87
    invoke-virtual {p0}, Laqe;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "delete from viafly_music_history where playTime <= (select b.playTime from ((select a.playTime from viafly_music_history a order by playTime desc limit ?, ?))b )"

    .line 89
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public a(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V
    .locals 6
    .param p1, "musicHistory"    # Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .prologue
    .line 54
    invoke-virtual {p0}, Laqe;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 55
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "id"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v2, "displayName"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v2, "path"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v2, "type"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->r()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string/jumbo v2, "contentType"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v2, "singer"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v2, "album"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v2, "albumUrl"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v2, "duration"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v2, "coverUrl"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v2, "lrc"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "shareUrl"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v2, "error"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string/jumbo v2, "dataSourceId"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v2, "playTime"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    const-string/jumbo v2, "viafly_music_history"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 74
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 124
    invoke-virtual {p0}, Laqe;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 125
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "select "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Laqe;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from viafly_music_history where path=? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 127
    .local v2, "musicHistory":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    new-instance v2, Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .end local v2    # "musicHistory":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    invoke-direct {v2}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;-><init>()V

    .line 129
    .restart local v2    # "musicHistory":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->l(Ljava/lang/String;)V

    .line 130
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->m(Ljava/lang/String;)V

    .line 131
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->n(Ljava/lang/String;)V

    .line 132
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->c(I)V

    .line 133
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->e(Ljava/lang/String;)V

    .line 134
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->b(Ljava/lang/String;)V

    .line 135
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(Ljava/lang/String;)V

    .line 136
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->g(Ljava/lang/String;)V

    .line 137
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->c(Ljava/lang/String;)V

    .line 138
    const/16 v3, 0x9

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->f(Ljava/lang/String;)V

    .line 139
    const/16 v3, 0xa

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->d(Ljava/lang/String;)V

    .line 140
    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->h(Ljava/lang/String;)V

    .line 141
    const/16 v3, 0xc

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(I)V

    .line 142
    const/16 v3, 0xd

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->i(Ljava/lang/String;)V

    .line 143
    const/16 v3, 0xe

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->a(J)V

    goto/16 :goto_0

    .line 145
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 146
    return-object v2
.end method

.method public b(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V
    .locals 6
    .param p1, "musicHistory"    # Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .prologue
    .line 77
    invoke-virtual {p0}, Laqe;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 78
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "viafly_music_history"

    const-string/jumbo v2, "id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->p()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public c(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V
    .locals 6
    .param p1, "musicHistory"    # Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .prologue
    .line 82
    invoke-virtual {p0}, Laqe;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "viafly_music_history"

    const-string/jumbo v2, "path=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 45
    iget-object v0, p0, Laqe;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 51
    return-void
.end method
