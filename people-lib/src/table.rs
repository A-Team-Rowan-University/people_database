
/**
 *
 * Represents a single table in a database
 *
 * At its core, a table simply maps a key to a value
 * Presumably, this uses an underlying database of some sort.
 *
 * We should probably also have a JoinTable type
 * There may also be a futures interface for async
 *
 */

pub trait Table {
    type Key;
    type Value;

    fn lookup(&self, key: Self::Key) -> Self::Value;
}

/**
 *
 * Represents a join table
 *
 * A join table is where two things from different tables get related.
 * For example, a User Department join table would have User keys and Database keys. Each entry
 * would relate one user to one department. Note that there may be more than one entry for each
 * user or department
 *
 */

pub trait JoinTable {
    type KeyA;
    type KeyB;

    fn lookup_a(&self, key: Self::KeyA) -> Self::KeyB;
    fn lookup_b(&self, key: Self::KeyB) -> Self::KeyA;
}

