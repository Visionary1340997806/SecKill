.class abstract Lcom/mobisage/android/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/util/UUID;

.field public b:J

.field public c:Z

.field public d:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/mobisage/android/u;->a:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
