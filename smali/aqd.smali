.class public Laqd;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MusicFavorDbHelper.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "viafly_music_favor.db"

    sput-object v0, Laqd;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Laqd;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    const-string/jumbo v0, "viafly_music_favor"

    iput-object v0, p0, Laqd;->b:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "CREATE TABLE [viafly_music_favor] ([id] VARCHAR,[displayName] VARCHAR,[path] VARCHAR,[type] INTEGER,[contentType] VARCHAR,[singer] VARCHAR,[album] VARCHAR,[albumUrl] VARCHAR,[duration] VARCHAR,[coverUrl] VARCHAR,[lrc] TEXT,[shareUrl] VARCHAR,[error] INTEGER,[dataSourceId] VARCHAR,[addTime] VARCHAR,[userId] VARCHAR,[lxSongId] INTEGER);"

    iput-object v0, p0, Laqd;->c:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 117
    new-instance v0, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    invoke-direct {v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;-><init>()V

    .line 118
    .local v0, "musicFavor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->l(Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->m(Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->n(Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->c(I)V

    .line 122
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->e(Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->b(Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->g(Ljava/lang/String;)V

    .line 126
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->c(Ljava/lang/String;)V

    .line 127
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->f(Ljava/lang/String;)V

    .line 128
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->d(Ljava/lang/String;)V

    .line 129
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->h(Ljava/lang/String;)V

    .line 130
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(I)V

    .line 131
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->i(Ljava/lang/String;)V

    .line 132
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(J)V

    .line 133
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->j(Ljava/lang/String;)V

    .line 134
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->k(Ljava/lang/String;)V

    .line 135
    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, " id, displayName, path, type, contentType, singer, album, albumUrl, duration, coverUrl, lrc, shareUrl, error, dataSourceId, addTime, userId, lxSongId "

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p0}, Laqd;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 91
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "select "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Laqd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "viafly_music_favor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " where id=? and userId=? and dataSourceId=? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 92
    invoke-static {}, Lth;->a()Lth;

    move-result-object v6

    invoke-virtual {v6}, Lth;->j()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    .line 91
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 93
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 94
    .local v2, "musicFavor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-direct {p0, v0}, Laqd;->a(Landroid/database/Cursor;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v2

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    return-object v2
.end method

.method public a(JI)Ljava/util/List;
    .locals 9
    .param p1, "time"    # J
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicFavor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Laqd;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 103
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicFavor;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "select "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Laqd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "viafly_music_favor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " where addTime<? and userId=?  order by addTime desc limit 0, ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lth;->a()Lth;

    move-result-object v6

    invoke-virtual {v6}, Lth;->j()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 105
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-direct {p0, v0}, Laqd;->a(Landroid/database/Cursor;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 109
    return-object v2
.end method

.method public a()V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Laqd;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "viafly_music_favor"

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public a(Lcom/iflytek/viafly/music/business/entry/MusicFavor;)V
    .locals 6
    .param p1, "musicFavor"    # Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    .prologue
    .line 60
    invoke-virtual {p0}, Laqd;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 61
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "id"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v2, "displayName"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v2, "path"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v2, "type"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->r()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    const-string/jumbo v2, "contentType"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "singer"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v2, "album"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v2, "albumUrl"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v2, "duration"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string/jumbo v2, "coverUrl"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v2, "lrc"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v2, "shareUrl"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v2, "error"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string/jumbo v2, "dataSourceId"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v2, "addTime"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    const-string/jumbo v2, "userId"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v2, "lxSongId"

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v2, "viafly_music_favor"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 82
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "lxSongId"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0}, Laqd;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "viafly_music_favor"

    const-string/jumbo v2, " lxSongId=? and userId=? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 51
    iget-object v0, p0, Laqd;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 57
    return-void
.end method
