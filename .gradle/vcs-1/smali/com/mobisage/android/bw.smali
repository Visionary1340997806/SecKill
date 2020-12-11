.class final Lcom/mobisage/android/bw;
.super Lcom/mobisage/android/u;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mobisage/android/u;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobisage/android/bw;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobisage/android/bw;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/mobisage/android/bx;->a()Lcom/mobisage/android/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobisage/android/bx;->c()V

    return-void
.end method
