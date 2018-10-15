.class public Lzd;
.super Lbby;
.source "BaseNoticeDaoImpl.java"

# interfaces
.implements Lza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Lzg;",
        ">;",
        "Lza;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lbby;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 16
    return-void
.end method
